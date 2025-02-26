part of 'marvel_characters_bloc.dart';

sealed class MarvelCharactersEvent {
  const MarvelCharactersEvent._();

  const factory MarvelCharactersEvent.load() = _LoadMarvelCharactersEvent;
}

class _LoadMarvelCharactersEvent extends MarvelCharactersEvent {
  const _LoadMarvelCharactersEvent() : super._();
}
