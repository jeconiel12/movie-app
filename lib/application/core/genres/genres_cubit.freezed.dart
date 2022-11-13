// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genres_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenresStateTearOff {
  const _$GenresStateTearOff();

  _GenresState call(
      {required List<GenreModel> genres,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _GenresState(
      genres: genres,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $GenresState = _$GenresStateTearOff();

/// @nodoc
mixin _$GenresState {
  List<GenreModel> get genres => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenresStateCopyWith<GenresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res>;
  $Res call(
      {List<GenreModel> genres,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res> implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  final GenresState _value;
  // ignore: unused_field
  final $Res Function(GenresState) _then;

  @override
  $Res call({
    Object? genres = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc
abstract class _$GenresStateCopyWith<$Res>
    implements $GenresStateCopyWith<$Res> {
  factory _$GenresStateCopyWith(
          _GenresState value, $Res Function(_GenresState) then) =
      __$GenresStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GenreModel> genres,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class __$GenresStateCopyWithImpl<$Res> extends _$GenresStateCopyWithImpl<$Res>
    implements _$GenresStateCopyWith<$Res> {
  __$GenresStateCopyWithImpl(
      _GenresState _value, $Res Function(_GenresState) _then)
      : super(_value, (v) => _then(v as _GenresState));

  @override
  _GenresState get _value => super._value as _GenresState;

  @override
  $Res call({
    Object? genres = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_GenresState(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc

class _$_GenresState extends _GenresState {
  const _$_GenresState(
      {required this.genres,
      required this.isLoading,
      required this.failureOption})
      : super._();

  @override
  final List<GenreModel> genres;
  @override
  final bool isLoading;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'GenresState(genres: $genres, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenresState &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$GenresStateCopyWith<_GenresState> get copyWith =>
      __$GenresStateCopyWithImpl<_GenresState>(this, _$identity);
}

abstract class _GenresState extends GenresState {
  const factory _GenresState(
      {required List<GenreModel> genres,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_GenresState;
  const _GenresState._() : super._();

  @override
  List<GenreModel> get genres;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$GenresStateCopyWith<_GenresState> get copyWith =>
      throw _privateConstructorUsedError;
}
