// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelResponse<T> _$MarvelResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MarvelResponse<T>._(
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$MarvelResponseToJson<T>(
  MarvelResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
    };
