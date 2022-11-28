import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/failure/failure_model.dart';
import '../../domain/movie/genre/genre_model.dart';
import '../../domain/movie/i_movie_repository.dart';
import '../../domain/movie/movie_detail/movie_detail_model.dart';
import '../../domain/movie/movie_model.dart';
import '../core/custom_exception.dart';
import 'movie_local_data.dart';
import 'movie_remote_data.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final IMovieLocal _movieLocal;
  final IMovieRemote _movieRemote;

  MovieRepository({
    required IMovieLocal movieLocal,
    required IMovieRemote movieRemote,
  })  : _movieLocal = movieLocal,
        _movieRemote = movieRemote;

  @override
  Future<Either<FailureModel, List<MovieModel>>> getPopular() async {
    try {
      final movies = await _movieRemote.getPopular();
      return right(movies);
    } on SocketException {
      return left(const FailureModel.network());
    } on RemoteException catch (err) {
      debugPrint(err.message);
      return left(const FailureModel.remote());
    }
  }

  @override
  Future<Either<FailureModel, List<MovieModel>>> getNowShowing() async {
    try {
      final movies = await _movieRemote.getNowShowing();
      return right(movies);
    } on SocketException {
      return left(const FailureModel.network());
    } on RemoteException catch (err) {
      debugPrint(err.message);
      return left(const FailureModel.remote());
    }
  }

  @override
  Future<Either<FailureModel, MovieDetailModel>> getMovieDetail(int id) async {
    try {
      final movie = await _movieRemote.getMovieDetail(id);
      return right(movie);
    } on SocketException {
      return left(const FailureModel.network());
    } on RemoteException catch (err) {
      debugPrint(err.message);
      return left(const FailureModel.remote());
    }
  }

  @override
  Future<Either<FailureModel, List<GenreModel>>> getGenres() async {
    try {
      final isGenresCached = await _movieLocal.isGenresCached();
      late final List<GenreModel> genres;
      if (isGenresCached) {
        genres = await _movieLocal.getGenresLocal();
      } else {
        genres = await _movieRemote.getGenresRemote();
        await _movieLocal.saveGenres(genres);
      }
      return right(genres);
    } on SocketException catch (err) {
      debugPrint(err.message);
      return left(const FailureModel.network());
    } on LocalException catch (err) {
      debugPrint(err.message);

      return left(const FailureModel.local());
    } on RemoteException catch (err) {
      debugPrint(err.message);
      return left(const FailureModel.remote());
    }
  }
}
