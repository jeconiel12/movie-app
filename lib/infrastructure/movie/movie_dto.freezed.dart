// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDtoTearOff {
  const _$MovieDtoTearOff();

  _MovieDto call(
      {required int? id,
      required String posterPath,
      required String title,
      required double vote,
      required List<int> genres}) {
    return _MovieDto(
      id: id,
      posterPath: posterPath,
      title: title,
      vote: vote,
      genres: genres,
    );
  }
}

/// @nodoc
const $MovieDto = _$MovieDtoTearOff();

/// @nodoc
mixin _$MovieDto {
  int? get id => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get vote => throw _privateConstructorUsedError;
  List<int> get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String posterPath,
      String title,
      double vote,
      List<int> genres});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as double,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) then) =
      __$MovieDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String posterPath,
      String title,
      double vote,
      List<int> genres});
}

/// @nodoc
class __$MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(_MovieDto _value, $Res Function(_MovieDto) _then)
      : super(_value, (v) => _then(v as _MovieDto));

  @override
  _MovieDto get _value => super._value as _MovieDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? vote = freezed,
    Object? genres = freezed,
  }) {
    return _then(_MovieDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as double,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_MovieDto extends _MovieDto {
  const _$_MovieDto(
      {required this.id,
      required this.posterPath,
      required this.title,
      required this.vote,
      required this.genres})
      : super._();

  @override
  final int? id;
  @override
  final String posterPath;
  @override
  final String title;
  @override
  final double vote;
  @override
  final List<int> genres;

  @override
  String toString() {
    return 'MovieDto(id: $id, posterPath: $posterPath, title: $title, vote: $vote, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.vote, vote) &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(vote),
      const DeepCollectionEquality().hash(genres));

  @JsonKey(ignore: true)
  @override
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);
}

abstract class _MovieDto extends MovieDto {
  const factory _MovieDto(
      {required int? id,
      required String posterPath,
      required String title,
      required double vote,
      required List<int> genres}) = _$_MovieDto;
  const _MovieDto._() : super._();

  @override
  int? get id;
  @override
  String get posterPath;
  @override
  String get title;
  @override
  double get vote;
  @override
  List<int> get genres;
  @override
  @JsonKey(ignore: true)
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
