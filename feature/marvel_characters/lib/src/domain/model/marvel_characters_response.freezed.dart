// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_characters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarvelCharactersResponse _$MarvelCharactersResponseFromJson(
    Map<String, dynamic> json) {
  return _MarvelCharactersResponse.fromJson(json);
}

/// @nodoc
mixin _$MarvelCharactersResponse {
  @JsonKey(name: 'results')
  List<MarvelCharacter> get characters => throw _privateConstructorUsedError;

  /// Serializes this MarvelCharactersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarvelCharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarvelCharactersResponseCopyWith<MarvelCharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelCharactersResponseCopyWith<$Res> {
  factory $MarvelCharactersResponseCopyWith(MarvelCharactersResponse value,
          $Res Function(MarvelCharactersResponse) then) =
      _$MarvelCharactersResponseCopyWithImpl<$Res, MarvelCharactersResponse>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<MarvelCharacter> characters});
}

/// @nodoc
class _$MarvelCharactersResponseCopyWithImpl<$Res,
        $Val extends MarvelCharactersResponse>
    implements $MarvelCharactersResponseCopyWith<$Res> {
  _$MarvelCharactersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarvelCharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<MarvelCharacter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarvelCharactersResponseImplCopyWith<$Res>
    implements $MarvelCharactersResponseCopyWith<$Res> {
  factory _$$MarvelCharactersResponseImplCopyWith(
          _$MarvelCharactersResponseImpl value,
          $Res Function(_$MarvelCharactersResponseImpl) then) =
      __$$MarvelCharactersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<MarvelCharacter> characters});
}

/// @nodoc
class __$$MarvelCharactersResponseImplCopyWithImpl<$Res>
    extends _$MarvelCharactersResponseCopyWithImpl<$Res,
        _$MarvelCharactersResponseImpl>
    implements _$$MarvelCharactersResponseImplCopyWith<$Res> {
  __$$MarvelCharactersResponseImplCopyWithImpl(
      _$MarvelCharactersResponseImpl _value,
      $Res Function(_$MarvelCharactersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarvelCharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$MarvelCharactersResponseImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<MarvelCharacter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarvelCharactersResponseImpl implements _MarvelCharactersResponse {
  const _$MarvelCharactersResponseImpl(
      {@JsonKey(name: 'results')
      required final List<MarvelCharacter> characters})
      : _characters = characters;

  factory _$MarvelCharactersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarvelCharactersResponseImplFromJson(json);

  final List<MarvelCharacter> _characters;
  @override
  @JsonKey(name: 'results')
  List<MarvelCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'MarvelCharactersResponse(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelCharactersResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of MarvelCharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarvelCharactersResponseImplCopyWith<_$MarvelCharactersResponseImpl>
      get copyWith => __$$MarvelCharactersResponseImplCopyWithImpl<
          _$MarvelCharactersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarvelCharactersResponseImplToJson(
      this,
    );
  }
}

abstract class _MarvelCharactersResponse implements MarvelCharactersResponse {
  const factory _MarvelCharactersResponse(
          {@JsonKey(name: 'results')
          required final List<MarvelCharacter> characters}) =
      _$MarvelCharactersResponseImpl;

  factory _MarvelCharactersResponse.fromJson(Map<String, dynamic> json) =
      _$MarvelCharactersResponseImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<MarvelCharacter> get characters;

  /// Create a copy of MarvelCharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarvelCharactersResponseImplCopyWith<_$MarvelCharactersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
