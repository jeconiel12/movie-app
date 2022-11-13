part of 'popular_cubit.dart';

@freezed
class PopularState with _$PopularState {
  const PopularState._();

  const factory PopularState({
    required List<MovieModel> movies,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _PopularState;

  factory PopularState.initial() {
    return PopularState(
      movies: [],
      isLoading: false,
      failureOption: none(),
    );
  }
  bool get isFailure => failureOption.isSome();
  bool get isMoviesLoaded => movies.isNotEmpty;
  String get failureMessage => failureOption.fold(
        () => '',
        (failure) => failure.when(
          local: () => 'Something went wrong, please try again.',
          network: () => 'No connection, please try again',
          remote: () => 'Something went wrong, please try again.',
        ),
      );
}
