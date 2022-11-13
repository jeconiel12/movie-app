// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenreModelTearOff {
  const _$GenreModelTearOff();

  _GenreModel call({required int? id, required String name}) {
    return _GenreModel(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $GenreModel = _$GenreModelTearOff();

/// @nodoc
mixin _$GenreModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenreModelCopyWith<GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res>;
  $Res call({int? id, String name});
}

/// @nodoc
class _$GenreModelCopyWithImpl<$Res> implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  final GenreModel _value;
  // ignore: unused_field
  final $Res Function(GenreModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$GenreModelCopyWith<$Res> implements $GenreModelCopyWith<$Res> {
  factory _$GenreModelCopyWith(
          _GenreModel value, $Res Function(_GenreModel) then) =
      __$GenreModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name});
}

/// @nodoc
class __$GenreModelCopyWithImpl<$Res> extends _$GenreModelCopyWithImpl<$Res>
    implements _$GenreModelCopyWith<$Res> {
  __$GenreModelCopyWithImpl(
      _GenreModel _value, $Res Function(_GenreModel) _then)
      : super(_value, (v) => _then(v as _GenreModel));

  @override
  _GenreModel get _value => super._value as _GenreModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_GenreModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenreModel extends _GenreModel {
  const _$_GenreModel({required this.id, required this.name}) : super._();

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith =>
      __$GenreModelCopyWithImpl<_GenreModel>(this, _$identity);
}

abstract class _GenreModel extends GenreModel {
  const factory _GenreModel({required int? id, required String name}) =
      _$_GenreModel;
  const _GenreModel._() : super._();

  @override
  int? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreModelCopyWith<_GenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
