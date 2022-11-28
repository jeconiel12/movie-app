import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/failure/failure_model.dart';
import '../../../domain/movie/i_movie_repository.dart';
import '../../../domain/movie/movie_model.dart';

part 'now_showing_state.dart';
part 'now_showing_cubit.freezed.dart';

@injectable
class NowShowingCubit extends Cubit<NowShowingState> {
  final IMovieRepository _movieRepository;

  NowShowingCubit({
    required IMovieRepository movieRepository,
  })  : _movieRepository = movieRepository,
        super(NowShowingState.initial());

  Future<void> getNowShowing() async {
    _emitLoading();
    final result = await _movieRepository.getNowShowing();
    result.fold(_emitFailure, _emitMovies);
  }

  void _emitMovies(List<MovieModel> movies) {
    emit(state.copyWith(isLoading: false, movies: movies));
  }

  void _emitFailure(FailureModel failure) {
    emit(state.copyWith(isLoading: false, failureOption: some(failure)));
  }

  void _emitLoading() {
    emit(state.copyWith(isLoading: true, failureOption: none()));
  }
}
