import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/movie/cast/cast_model.dart';
import 'package:movie_app/domain/movie/genre/genre_model.dart';
import 'package:movie_app/domain/movie/movie_detail/movie_detail_model.dart';
import 'package:movie_app/infrastructure/movie/cast/cast_dto.dart';
import 'package:movie_app/infrastructure/movie/genre/genre_dto.dart';

part 'movie_detail_dto.freezed.dart';

@freezed
class MovieDetailDto with _$MovieDetailDto {
  const MovieDetailDto._();

  const factory MovieDetailDto({
    required int? id,
    required String posterPath,
    required String title,
    required double vote,
    required List<GenreModel> genres,
    required int duration,
    required String videoPath,
    required String rating,
    required String language,
    required String description,
    required List<CastModel> casts,
  }) = _MovieDetailDto;

  factory MovieDetailDto.fromJson(Map<String, dynamic> json) {
    return MovieDetailDto(
      id: json['id'],
      posterPath: json['poster_path'] ?? '',
      title: json['title'],
      vote: (json['vote_average'] as num).toDouble(),
      duration: json['runtime'] ?? 0,
      language: _getLanguage(json['spoken_languages'] as List, json['original_language']),
      description: json['overview'] ?? '',
      genres: (json['genres'] as List).map((json) => GenreDto.fromJson(json).toModel()).toList(),
      videoPath: _getVideo(json['videos']['results'] as List),
      rating: _getRating(json['release_dates']['results'] as List),
      casts: (json['credits']['cast'] as List)
          .map((json) => CastDto.fromJson(json).toModel())
          .toList(),
    );
  }

  static String _getLanguage(List<dynamic> data, String originalLanguage) {
    return data.firstWhere(
          (languageJson) => languageJson['iso_639_1'] == originalLanguage,
        )['name'] ??
        '';
  }

  static String _getVideo(List<dynamic> data) {
    for (Map<String, dynamic> json in data) {
      if (json['site'] == 'YouTube' && json['type'] == 'Trailer') {
        return json['key'];
      }
    }
    return '';
  }

  static String _getRating(List<dynamic> data) {
    for (Map<String, dynamic> json in data) {
      if (json['iso_3166_1'] == 'US') {
        return json['release_dates'][0]['certification'];
      }
    }
    return '';
  }

  MovieDetailModel toModel() {
    return MovieDetailModel(
      id: id,
      posterPath: posterPath,
      title: title,
      vote: vote,
      genres: genres,
      duration: duration,
      videoPath: videoPath,
      rating: rating,
      language: language,
      description: description,
      casts: casts,
    );
  }
}
