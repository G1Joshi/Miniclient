import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_characters/src/domain/model/marvel_character.dart';

part 'marvel_characters_response.freezed.dart';
part 'marvel_characters_response.g.dart';

@freezed
class MarvelCharactersResponse with _$MarvelCharactersResponse {
  const factory MarvelCharactersResponse({
    @JsonKey(name: 'results') required List<MarvelCharacter> characters,
  }) = _MarvelCharactersResponse;

  factory MarvelCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelCharactersResponseFromJson(json);
}
