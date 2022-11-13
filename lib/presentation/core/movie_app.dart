import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/core/genres/genres_cubit.dart';
import 'package:movie_app/core/get_it.dart';
import 'package:movie_app/presentation/core/routes.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  late final GenresCubit _genresCubit;

  @override
  void initState() {
    super.initState();
    _genresCubit = getIt<GenresCubit>();
    _genresCubit.getGenres();
  }

  @override
  void dispose() {
    _genresCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _genresCubit,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    );
  }
}
