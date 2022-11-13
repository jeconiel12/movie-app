// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CastModelTearOff {
  const _$CastModelTearOff();

  _CastModel call(
      {required int? id, required String name, required String imagePath}) {
    return _CastModel(
      id: id,
      name: name,
      imagePath: imagePath,
    );
  }
}

/// @nodoc
const $CastModel = _$CastModelTearOff();

/// @nodoc
mixin _$CastModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastModelCopyWith<CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res>;
  $Res call({int? id, String name, String imagePath});
}

/// @nodoc
class _$CastModelCopyWithImpl<$Res> implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  final CastModel _value;
  // ignore: unused_field
  final $Res Function(CastModel) _then;

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
abstract class _$CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$CastModelCopyWith(
          _CastModel value, $Res Function(_CastModel) then) =
      __$CastModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name, String imagePath});
}

/// @nodoc
class __$CastModelCopyWithImpl<$Res> extends _$CastModelCopyWithImpl<$Res>
    implements _$CastModelCopyWith<$Res> {
  __$CastModelCopyWithImpl(_CastModel _value, $Res Function(_CastModel) _then)
      : super(_value, (v) => _then(v as _CastModel));

  @override
  _CastModel get _value => super._value as _CastModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_CastModel(
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

class _$_CastModel extends _CastModel {
  const _$_CastModel(
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
    return 'CastModel(id: $id, name: $name, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CastModel &&
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
  _$CastModelCopyWith<_CastModel> get copyWith =>
      __$CastModelCopyWithImpl<_CastModel>(this, _$identity);
}

abstract class _CastModel extends CastModel {
  const factory _CastModel(
      {required int? id,
      required String name,
      required String imagePath}) = _$_CastModel;
  const _CastModel._() : super._();

  @override
  int? get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$CastModelCopyWith<_CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
