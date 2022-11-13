import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/movie/movie_model.dart';

part 'movie_dto.freezed.dart';

@freezed
class MovieDto with _$MovieDto {
  const MovieDto._();

  const factory MovieDto({
    required int? id,
    required String posterPath,
    required String title,
    required double vote,
    required List<int> genres,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      id: json['id'],
      posterPath: json['poster_path'] ?? '',
      title: json['title'],
      vote: (json['vote_average'] as num).toDouble(),
      genres: List<int>.from(json['genre_ids'] as List),
    );
  }

  MovieModel toModel() {
    return MovieModel(
      id: id,
      posterPath: posterPath,
      title: title,
      vote: vote,
      genres: genres,
    );
  }
}
