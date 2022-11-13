// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CastDtoTearOff {
  const _$CastDtoTearOff();

  _CastDto call(
      {required int? id, required String name, required String imagePath}) {
    return _CastDto(
      id: id,
      name: name,
      imagePath: imagePath,
    );
  }
}

/// @nodoc
const $CastDto = _$CastDtoTearOff();

/// @nodoc
mixin _$CastDto {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastDtoCopyWith<CastDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDtoCopyWith<$Res> {
  factory $CastDtoCopyWith(CastDto value, $Res Function(CastDto) then) =
      _$CastDtoCopyWithImpl<$Res>;
  $Res call({int? id, String name, String imagePath});
}

/// @nodoc
class _$CastDtoCopyWithImpl<$Res> implements $CastDtoCopyWith<$Res> {
  _$CastDtoCopyWithImpl(this._value, this._then);

  final CastDto _value;
  // ignore: unused_field
  final $Res Function(CastDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CastDtoCopyWith<$Res> implements $CastDtoCopyWith<$Res> {
  factory _$CastDtoCopyWith(_CastDto value, $Res Function(_CastDto) then) =
      __$CastDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name, String imagePath});
}

/// @nodoc
class __$CastDtoCopyWithImpl<$Res> extends _$CastDtoCopyWithImpl<$Res>
    implements _$CastDtoCopyWith<$Res> {
  __$CastDtoCopyWithImpl(_CastDto _value, $Res Function(_CastDto) _then)
      : super(_value, (v) => _then(v as _CastDto));

  @override
  _CastDto get _value => super._value as _CastDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_CastDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CastDto extends _CastDto {
  const _$_CastDto(
      {required this.id, required this.name, required this.imagePath})
      : super._();

  @override
  final int? id;
  @override
  final String name;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'CastDto(id: $id, name: $name, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CastDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$CastDtoCopyWith<_CastDto> get copyWith =>
      __$CastDtoCopyWithImpl<_CastDto>(this, _$identity);
}

abstract class _CastDto extends CastDto {
  const factory _CastDto(
      {required int? id,
      required String name,
      required String imagePath}) = _$_CastDto;
  const _CastDto._() : super._();

  @override
  int? get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$CastDtoCopyWith<_CastDto> get copyWith =>
      throw _privateConstructorUsedError;
}
