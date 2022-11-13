import 'package:get_it/get_it.dart';
import 'package:movie_app/application/core/genres/genres_cubit.dart';
import 'package:movie_app/application/home/now_showing/now_showing_cubit.dart';
import 'package:movie_app/application/home/popular/popular_cubit.dart';
import 'package:movie_app/application/movie_detail/movie_detail_cubit.dart';
import 'package:movie_app/domain/movie/i_movie_repository.dart';
import 'package:movie_app/infrastructure/movie/movie_local_data.dart';
import 'package:movie_app/infrastructure/movie/movie_remote_data.dart';
import 'package:movie_app/infrastructure/movie/movie_repository.dart';

final getIt = GetIt.instance;

void setup() {
  //Data Source
  getIt.registerLazySingleton<IMovieLocal>(() => const MovieLocal());
  getIt.registerLazySingleton<IMovieRemote>(() => const MovieRemote());

  //Repository
  getIt.registerLazySingleton<IMovieRepository>(
    () => MovieRepository(
      movieLocal: getIt(),
      movieRemote: getIt(),
    ),
  );

  //Cubit
  getIt.registerLazySingleton<GenresCubit>(() => GenresCubit(movieRepository: getIt()));
  getIt.registerFactory<MovieDetailCubit>(() => MovieDetailCubit(movieRepository: getIt()));
  getIt.registerFactory<NowShowingCubit>(() => NowShowingCubit(movieRepository: getIt()));
  getIt.registerFactory<PopularCubit>(() => PopularCubit(movieRepository: getIt()));
}
