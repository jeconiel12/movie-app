import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/movie/genre/genre_model.dart';
import 'package:movie_app/domain/movie/genre/genre_table.dart';

part 'genre_dto.freezed.dart';

@freezed
class GenreDto with _$GenreDto {
  const GenreDto._();

  const factory GenreDto({
    required int? id,
    required String name,
  }) = _GenreDto;

  factory GenreDto.fromJson(Map<String, dynamic> json) {
    return GenreDto(
      id: json['id'],
      name: json['name'],
    );
  }

  factory GenreDto.fromTable(GenreTable table) {
    return GenreDto(
      id: table.id,
      name: table.name,
    );
  }

  factory GenreDto.fromModel(GenreModel model) {
    return GenreDto(
      id: model.id,
      name: model.name,
    );
  }

  GenreModel toModel() {
    return GenreModel(
      id: id,
      name: name,
    );
  }

  GenreTable toTable() {
    return GenreTable(
      id: id!,
      name: name,
    );
  }
}
