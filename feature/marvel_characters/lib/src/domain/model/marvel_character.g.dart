// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelCharacterImpl _$$MarvelCharacterImplFromJson(
        Map<String, dynamic> json) =>
    _$MarvelCharacterImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarvelCharacterImplToJson(
        _$MarvelCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };

_$ThumbnailImpl _$$ThumbnailImplFromJson(Map<String, dynamic> json) =>
    _$ThumbnailImpl(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$$ThumbnailImplToJson(_$ThumbnailImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };
