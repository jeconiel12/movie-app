import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/movie/genre/genre_model.dart';
import '../../domain/movie/genre/genre_table.dart';
import '../core/custom_exception.dart';
import 'genre/genre_dto.dart';

abstract class IMovieLocal {
  Future<bool> isGenresCached();
  Future<List<GenreModel>> getGenresLocal();
  Future<void> saveGenres(List<GenreModel> genres);
}

@LazySingleton(as: IMovieLocal)
class MovieLocal implements IMovieLocal {
  @override
  Future<bool> isGenresCached() async {
    try {
      final genreBox = await Hive.openBox('genreBox');
      return genreBox.isNotEmpty;
    } catch (error) {
      throw LocalException(error.toString());
    }
  }

  @override
  Future<List<GenreModel>> getGenresLocal() async {
    try {
      final genreBox = await Hive.openBox('genreBox');
      final genreKeys = genreBox.keys;
      final List<GenreTable> genreTables =
          genreKeys.map((key) => genreBox.get(key) as GenreTable).toList();
      final List<GenreModel> genres = genreTables
          .map((table) => GenreDto.fromTable(table).toModel())
          .toList();
      return genres;
    } catch (error) {
      throw LocalException(error.toString());
    }
  }

  @override
  Future<void> saveGenres(List<GenreModel> genres) async {
    try {
      final genreBox = await Hive.openBox('genreBox');
      for (var genre in genres) {
        await genreBox.put(genre.id, GenreDto.fromModel(genre).toTable());
      }
    } catch (error) {
      throw LocalException(error.toString());
    }
  }
}
