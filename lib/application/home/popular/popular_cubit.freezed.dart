// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PopularStateTearOff {
  const _$PopularStateTearOff();

  _PopularState call(
      {required List<MovieModel> movies,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _PopularState(
      movies: movies,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $PopularState = _$PopularStateTearOff();

/// @nodoc
mixin _$PopularState {
  List<MovieModel> get movies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularStateCopyWith<PopularState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularStateCopyWith<$Res> {
  factory $PopularStateCopyWith(
          PopularState value, $Res Function(PopularState) then) =
      _$PopularStateCopyWithImpl<$Res>;
  $Res call(
      {List<MovieModel> movies,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class _$PopularStateCopyWithImpl<$Res> implements $PopularStateCopyWith<$Res> {
  _$PopularStateCopyWithImpl(this._value, this._then);

  final PopularState _value;
  // ignore: unused_field
  final $Res Function(PopularState) _then;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
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
abstract class _$PopularStateCopyWith<$Res>
    implements $PopularStateCopyWith<$Res> {
  factory _$PopularStateCopyWith(
          _PopularState value, $Res Function(_PopularState) then) =
      __$PopularStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MovieModel> movies,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class __$PopularStateCopyWithImpl<$Res> extends _$PopularStateCopyWithImpl<$Res>
    implements _$PopularStateCopyWith<$Res> {
  __$PopularStateCopyWithImpl(
      _PopularState _value, $Res Function(_PopularState) _then)
      : super(_value, (v) => _then(v as _PopularState));

  @override
  _PopularState get _value => super._value as _PopularState;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_PopularState(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
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

class _$_PopularState extends _PopularState {
  const _$_PopularState(
      {required this.movies,
      required this.isLoading,
      required this.failureOption})
      : super._();

  @override
  final List<MovieModel> movies;
  @override
  final bool isLoading;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'PopularState(movies: $movies, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularState &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$PopularStateCopyWith<_PopularState> get copyWith =>
      __$PopularStateCopyWithImpl<_PopularState>(this, _$identity);
}

abstract class _PopularState extends PopularState {
  const factory _PopularState(
      {required List<MovieModel> movies,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_PopularState;
  const _PopularState._() : super._();

  @override
  List<MovieModel> get movies;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$PopularStateCopyWith<_PopularState> get copyWith =>
      throw _privateConstructorUsedError;
}
