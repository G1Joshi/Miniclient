import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_characters/src/domain/model/marvel_character.dart';
import 'package:marvel_characters/src/domain/repository/marvel_characters_repository.dart';
import 'package:tide_monitoring/tide_monitoring.dart';

part 'marvel_characters_bloc.freezed.dart';
part 'marvel_characters_event.dart';
part 'marvel_characters_state.dart';

@injectable
class MarvelCharactersBloc
    extends Bloc<MarvelCharactersEvent, MarvelCharactersState> {
  MarvelCharactersBloc(
    this._charactersRepository,
    this._monitoring,
  ) : super(const MarvelCharactersState.loading()) {
    on<MarvelCharactersEvent>((event, emit) => switch (event) {
          _LoadMarvelCharactersEvent() => _onLoad(emit, event),
        });

    add(const MarvelCharactersEvent.load());
  }

  final MarvelCharactersRepository _charactersRepository;
  final Monitoring _monitoring;

  @override
  Future<void> onTransition(
    Transition<MarvelCharactersEvent, MarvelCharactersState> transition,
  ) async {
    super.onTransition(transition);

    final state = transition.nextState;
    if (state is _ErrorMarvelCharactersState)
      await _monitoring.log(
        'MarvelCharactersBloc Error: ${state.error}',
      );
  }

  Future<void> _onLoad(
    Emitter<MarvelCharactersState> emit,
    _LoadMarvelCharactersEvent event,
  ) async {
    emit(const MarvelCharactersState.loading());

    final characters = await _charactersRepository.getCharacters();

    emit(
      characters.fold(
        MarvelCharactersState.success,
        MarvelCharactersState.error,
      ),
    );
  }
}
