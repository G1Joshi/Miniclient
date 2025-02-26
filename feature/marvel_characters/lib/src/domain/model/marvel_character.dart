import 'package:freezed_annotation/freezed_annotation.dart';

part 'marvel_character.freezed.dart';
part 'marvel_character.g.dart';

@freezed
class MarvelCharacter with _$MarvelCharacter {
  const factory MarvelCharacter({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'thumbnail') required Thumbnail thumbnail,
  }) = _MarvelCharacter;

  factory MarvelCharacter.fromJson(Map<String, dynamic> json) =>
      _$MarvelCharacterFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    @JsonKey(name: 'path') required String path,
    @JsonKey(name: 'extension') required String extension,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

extension ThumbnailX on Thumbnail {
  String get url => '$path.$extension';
}
