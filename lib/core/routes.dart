import 'package:flutter/material.dart';

import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/movie_detail/movie_detail_screen.dart';
import '../presentation/screens/splash/splash_page.dart';

Map<String, WidgetBuilder> get routes {
  return {
    SplashPage.routeName: (_) => const SplashPage(),
    HomeScreen.routeName: (_) => const HomeScreen(),
    MovieDetailScreen.routeName: (_) => const MovieDetailScreen(),
  };
}
