part of 'now_showing_cubit.dart';

@freezed
class NowShowingState with _$NowShowingState {
  const NowShowingState._();

  const factory NowShowingState({
    required List<MovieModel> movies,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _NowShowingState;

  factory NowShowingState.initial() {
    return NowShowingState(
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
