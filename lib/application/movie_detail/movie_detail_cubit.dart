import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/failure/failure_model.dart';
import '../../domain/movie/i_movie_repository.dart';
import '../../domain/movie/movie_detail/movie_detail_model.dart';

part 'movie_detail_state.dart';
part 'movie_detail_cubit.freezed.dart';

@injectable
class MovieDetailCubit extends Cubit<MovieDetailState> {
  final IMovieRepository _movieRepository;

  MovieDetailCubit({
    required IMovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(MovieDetailState.initial());

  Future<void> getMovieDetail(int id) async {
    _emitLoading();
    final result = await _movieRepository.getMovieDetail(id);
    result.fold(_emitFailure, _emitMovie);
  }

  void _emitMovie(MovieDetailModel movie) {
    emit(state.copyWith(isLoading: false, movie: movie));
  }

  void _emitFailure(FailureModel failure) {
    emit(state.copyWith(isLoading: false, failureOption: some(failure)));
  }

  void _emitLoading() {
    emit(state.copyWith(isLoading: true, failureOption: none()));
  }
}
