// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_characters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelCharactersResponseImpl _$$MarvelCharactersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MarvelCharactersResponseImpl(
      characters: (json['results'] as List<dynamic>)
          .map((e) => MarvelCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MarvelCharactersResponseImplToJson(
        _$MarvelCharactersResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.characters,
    };
