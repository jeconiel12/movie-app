part of 'movie_detail_cubit.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const MovieDetailState._();

  const factory MovieDetailState({
    required MovieDetailModel movie,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _PopularState;

  factory MovieDetailState.initial() {
    return MovieDetailState(
      movie: MovieDetailModel.empty(),
      isLoading: false,
      failureOption: none(),
    );
  }
  bool get isFailure => failureOption.isSome();
  bool get isMoviesLoaded => movie != MovieDetailModel.empty();
  String get failureMessage => failureOption.fold(
        () => '',
        (failure) => failure.when(
          local: () => 'Something went wrong, please try again.',
          network: () => 'No connection, please try again',
          remote: () => 'Something went wrong, please try again.',
        ),
      );
}
