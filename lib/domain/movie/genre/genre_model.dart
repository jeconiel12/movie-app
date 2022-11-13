import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';

@freezed
class GenreModel with _$GenreModel {
  const GenreModel._();

  const factory GenreModel({
    required int? id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.empty() {
    return const GenreModel(
      id: null,
      name: '',
    );
  }
}
