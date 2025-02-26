part of 'marvel_characters_bloc.dart';

@freezed
class MarvelCharactersState with _$MarvelCharactersState {
  const factory MarvelCharactersState.loading() = _LoadingMarvelCharactersState;
  const factory MarvelCharactersState.success(
    List<MarvelCharacter> marvelCharacters,
  ) = _SuccessMarvelCharactersState;
  const factory MarvelCharactersState.error(
    Exception error,
  ) = _ErrorMarvelCharactersState;
}
