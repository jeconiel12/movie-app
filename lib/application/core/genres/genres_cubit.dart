import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/failure/failure_model.dart';
import 'package:movie_app/domain/movie/genre/genre_model.dart';
import 'package:movie_app/domain/movie/i_movie_repository.dart';

part 'genres_state.dart';
part 'genres_cubit.freezed.dart';

class GenresCubit extends Cubit<GenresState> {
  final IMovieRepository _movieRepository;

  GenresCubit({
    required IMovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(GenresState.initial());

  String genre(int id) {
    return state.genres
        .firstWhere((genre) => genre.id == id, orElse: () => GenreModel.empty())
        .name;
  }

  Future<void> getGenres() async {
    _emitLoading();
    final result = await _movieRepository.getGenres();
    result.fold(_emitFailure, _emitGenres);
  }

  void _emitGenres(List<GenreModel> genres) {
    emit(state.copyWith(isLoading: false, genres: genres));
  }

  void _emitFailure(FailureModel failure) {
    emit(state.copyWith(isLoading: false, failureOption: some(failure)));
  }

  void _emitLoading() {
    emit(state.copyWith(isLoading: true, failureOption: none()));
  }
}
