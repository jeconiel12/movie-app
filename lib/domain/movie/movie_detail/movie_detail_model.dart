import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/movie/cast/cast_model.dart';
import 'package:movie_app/domain/movie/genre/genre_model.dart';

part 'movie_detail_model.freezed.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const MovieDetailModel._();

  const factory MovieDetailModel({
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
  }) = _MovieDetailModel;

  factory MovieDetailModel.empty() {
    return const MovieDetailModel(
      id: null,
      posterPath: '',
      title: '',
      vote: 0,
      genres: [],
      duration: 0,
      videoPath: '',
      rating: '',
      language: '',
      description: '',
      casts: [],
    );
  }
}
