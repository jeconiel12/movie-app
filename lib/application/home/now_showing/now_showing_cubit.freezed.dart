// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'now_showing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NowShowingStateTearOff {
  const _$NowShowingStateTearOff();

  _NowShowingState call(
      {required List<MovieModel> movies,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _NowShowingState(
      movies: movies,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $NowShowingState = _$NowShowingStateTearOff();

/// @nodoc
mixin _$NowShowingState {
  List<MovieModel> get movies => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowShowingStateCopyWith<NowShowingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowShowingStateCopyWith<$Res> {
  factory $NowShowingStateCopyWith(
          NowShowingState value, $Res Function(NowShowingState) then) =
      _$NowShowingStateCopyWithImpl<$Res>;
  $Res call(
      {List<MovieModel> movies,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class _$NowShowingStateCopyWithImpl<$Res>
    implements $NowShowingStateCopyWith<$Res> {
  _$NowShowingStateCopyWithImpl(this._value, this._then);

  final NowShowingState _value;
  // ignore: unused_field
  final $Res Function(NowShowingState) _then;

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
abstract class _$NowShowingStateCopyWith<$Res>
    implements $NowShowingStateCopyWith<$Res> {
  factory _$NowShowingStateCopyWith(
          _NowShowingState value, $Res Function(_NowShowingState) then) =
      __$NowShowingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MovieModel> movies,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class __$NowShowingStateCopyWithImpl<$Res>
    extends _$NowShowingStateCopyWithImpl<$Res>
    implements _$NowShowingStateCopyWith<$Res> {
  __$NowShowingStateCopyWithImpl(
      _NowShowingState _value, $Res Function(_NowShowingState) _then)
      : super(_value, (v) => _then(v as _NowShowingState));

  @override
  _NowShowingState get _value => super._value as _NowShowingState;

  @override
  $Res call({
    Object? movies = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_NowShowingState(
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

class _$_NowShowingState extends _NowShowingState {
  const _$_NowShowingState(
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
    return 'NowShowingState(movies: $movies, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NowShowingState &&
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
  _$NowShowingStateCopyWith<_NowShowingState> get copyWith =>
      __$NowShowingStateCopyWithImpl<_NowShowingState>(this, _$identity);
}

abstract class _NowShowingState extends NowShowingState {
  const factory _NowShowingState(
      {required List<MovieModel> movies,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_NowShowingState;
  const _NowShowingState._() : super._();

  @override
  List<MovieModel> get movies;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$NowShowingStateCopyWith<_NowShowingState> get copyWith =>
      throw _privateConstructorUsedError;
}
