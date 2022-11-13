import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  const MovieModel._();

  const factory MovieModel({
    required int? id,
    required String posterPath,
    required String title,
    required double vote,
    required List<int> genres,
  }) = _MovieModel;

  factory MovieModel.empty() {
    return const MovieModel(
      id: null,
      posterPath: '',
      title: '',
      vote: 0,
      genres: [],
    );
  }
}
