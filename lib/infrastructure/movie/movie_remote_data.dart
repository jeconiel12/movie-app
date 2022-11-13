import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/domain/movie/genre/genre_model.dart';
import 'package:movie_app/domain/movie/movie_detail/movie_detail_model.dart';
import 'package:movie_app/domain/movie/movie_model.dart';
import 'package:movie_app/core/constants.dart';
import 'package:movie_app/infrastructure/core/custom_exception.dart';
import 'package:movie_app/infrastructure/movie/genre/genre_dto.dart';
import 'package:movie_app/infrastructure/movie/movie_detail/movie_detail_dto.dart';
import 'package:movie_app/infrastructure/movie/movie_dto.dart';

abstract class IMovieRemote {
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getNowShowing();
  Future<MovieDetailModel> getMovieDetail(int id);
  Future<List<GenreModel>> getGenresRemote();
}

class MovieRemote implements IMovieRemote {
  const MovieRemote();

  @override
  Future<List<MovieModel>> getPopular() async {
    final url = Uri.parse('$baseUrl/movie/popular?api_key=$apiKey');
    final response = await http.get(url);
    final data = json.decode(response.body);

    if (response.statusCode == 200) {
      return (data['results'] as List).map((json) => MovieDto.fromJson(json).toModel()).toList();
    } else {
      throw RemoteException(data['status_message'] ?? 'Something went wrong');
    }
  }

  @override
  Future<List<MovieModel>> getNowShowing() async {
    final url = Uri.parse('$baseUrl/movie/now_playing?api_key=$apiKey');
    final response = await http.get(url);
    final data = json.decode(response.body);

    if (response.statusCode == 200) {
      return (data['results'] as List).map((json) => MovieDto.fromJson(json).toModel()).toList();
    } else {
      throw RemoteException(data['status_message'] ?? 'Something went wrong');
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetail(int id) async {
    final url = Uri.parse(
        '$baseUrl/movie/$id?api_key=$apiKey&append_to_response=videos,credits,release_dates');
    final response = await http.get(url);
    final data = json.decode(response.body);

    if (response.statusCode == 200) {
      return MovieDetailDto.fromJson(data).toModel();
    } else {
      throw RemoteException(data['status_message'] ?? 'Something went wrong');
    }
  }

  @override
  Future<List<GenreModel>> getGenresRemote() async {
    final url = Uri.parse('$baseUrl/genre/movie/list?api_key=$apiKey');
    final response = await http.get(url);
    final data = json.decode(response.body);

    if (response.statusCode == 200) {
      final genres =
          (data['genres'] as List).map((json) => GenreDto.fromJson(json).toModel()).toList();
      return genres;
    } else {
      throw RemoteException(data['status_message'] ?? 'Something went wrong');
    }
  }
}
