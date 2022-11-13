import 'package:flutter/material.dart';
import 'package:movie_app/presentation/screens/home/home_screen.dart';
import 'package:movie_app/presentation/screens/movie_detail/movie_detail_screen.dart';
import 'package:movie_app/presentation/screens/splash/splash_page.dart';

Map<String, WidgetBuilder> get routes {
  return {
    SplashPage.routeName: (_) => const SplashPage(),
    HomeScreen.routeName: (_) => const HomeScreen(),
    MovieDetailScreen.routeName: (_) => const MovieDetailScreen(),
  };
}
