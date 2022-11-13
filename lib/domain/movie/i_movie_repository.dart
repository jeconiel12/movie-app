import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/failure/failure_model.dart';
import 'package:movie_app/domain/movie/genre/genre_model.dart';
import 'package:movie_app/domain/movie/movie_detail/movie_detail_model.dart';
import 'package:movie_app/domain/movie/movie_model.dart';

abstract class IMovieRepository {
  Future<Either<FailureModel, List<MovieModel>>> getPopular();
  Future<Either<FailureModel, List<MovieModel>>> getNowShowing();
  Future<Either<FailureModel, MovieDetailModel>> getMovieDetail(int id);
  Future<Either<FailureModel, List<GenreModel>>> getGenres();
}
