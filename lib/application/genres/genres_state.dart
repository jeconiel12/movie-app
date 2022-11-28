part of 'genres_cubit.dart';

@freezed
class GenresState with _$GenresState {
  const GenresState._();

  const factory GenresState({
    required List<GenreModel> genres,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _GenresState;

  factory GenresState.initial() {
    return GenresState(
      genres: [],
      isLoading: false,
      failureOption: none(),
    );
  }

  bool get isGenresLoaded => genres.isNotEmpty;
  bool get isGenresFailure => failureOption.isSome();
}
