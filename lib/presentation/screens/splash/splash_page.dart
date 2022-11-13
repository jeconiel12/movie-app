import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/application/core/genres/genres_cubit.dart';
import 'package:movie_app/presentation/screens/home/home_screen.dart';
import 'package:movie_app/presentation/theme/theme_text.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/';

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<GenresCubit, GenresState>(
          listenWhen: (p, c) => p.isGenresLoaded != c.isGenresLoaded && c.isGenresLoaded,
          listener: (context, state) {
            Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
          },
        ),
        BlocListener<GenresCubit, GenresState>(
          listenWhen: (p, c) => p.isGenresFailure != c.isGenresFailure && c.isGenresFailure,
          listener: (context, state) {
            // SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/nav_1.svg'),
              const SizedBox(width: 8),
              Text(
                'FilmKu',
                style: ThemeText.black.copyWith(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
