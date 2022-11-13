// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailStateTearOff {
  const _$MovieDetailStateTearOff();

  _PopularState call(
      {required MovieDetailModel movie,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _PopularState(
      movie: movie,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $MovieDetailState = _$MovieDetailStateTearOff();

/// @nodoc
mixin _$MovieDetailState {
  MovieDetailModel get movie => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
  $Res call(
      {MovieDetailModel movie,
      bool isLoading,
      Option<FailureModel> failureOption});

  $MovieDetailModelCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  final MovieDetailState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailState) _then;

  @override
  $Res call({
    Object? movie = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailModel,
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

  @override
  $MovieDetailModelCopyWith<$Res> get movie {
    return $MovieDetailModelCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
abstract class _$PopularStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$PopularStateCopyWith(
          _PopularState value, $Res Function(_PopularState) then) =
      __$PopularStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MovieDetailModel movie,
      bool isLoading,
      Option<FailureModel> failureOption});

  @override
  $MovieDetailModelCopyWith<$Res> get movie;
}

/// @nodoc
class __$PopularStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements _$PopularStateCopyWith<$Res> {
  __$PopularStateCopyWithImpl(
      _PopularState _value, $Res Function(_PopularState) _then)
      : super(_value, (v) => _then(v as _PopularState));

  @override
  _PopularState get _value => super._value as _PopularState;

  @override
  $Res call({
    Object? movie = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_PopularState(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailModel,
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
      {required this.movie,
      required this.isLoading,
      required this.failureOption})
      : super._();

  @override
  final MovieDetailModel movie;
  @override
  final bool isLoading;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'MovieDetailState(movie: $movie, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PopularState &&
            const DeepCollectionEquality().equals(other.movie, movie) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movie),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$PopularStateCopyWith<_PopularState> get copyWith =>
      __$PopularStateCopyWithImpl<_PopularState>(this, _$identity);
}

abstract class _PopularState extends MovieDetailState {
  const factory _PopularState(
      {required MovieDetailModel movie,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_PopularState;
  const _PopularState._() : super._();

  @override
  MovieDetailModel get movie;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$PopularStateCopyWith<_PopularState> get copyWith =>
      throw _privateConstructorUsedError;
}
