import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/config/tmdb_url_config.dart';

import '../../../application/genres/genres_cubit.dart';
import '../../../application/home/now_showing/now_showing_cubit.dart';
import '../../../application/home/popular/popular_cubit.dart';
import '../../../core/constants/theme_color.dart';
import '../../../core/constants/theme_text.dart';
import '../../../di/injection.dart';
import '../../../domain/movie/movie_model.dart';
import '../../widgets/custom_chip.dart';
import '../../widgets/custom_shimmer.dart';
import '../../widgets/custom_vote.dart';
import '../movie_detail/movie_detail_screen.dart';

part 'widgets/home_navbar.dart';
part 'widgets/home_header.dart';
part 'widgets/home_section_header.dart';
part 'widgets/movie_card.dart';
part 'widgets/movie_tile.dart';
part 'widgets/now_showing_section.dart';
part 'widgets/popular_section.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-page';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final NowShowingCubit _nowShowingCubit;
  late final PopularCubit _popularCubit;

  @override
  void initState() {
    super.initState();
    _nowShowingCubit = getIt<NowShowingCubit>();
    _popularCubit = getIt<PopularCubit>();
    _nowShowingCubit.getNowShowing();
    _popularCubit.getPopular();
  }

  @override
  void dispose() {
    _popularCubit.close();
    _nowShowingCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _nowShowingCubit,
        ),
        BlocProvider(
          create: (context) => _popularCubit,
        ),
      ],
      child: Scaffold(
        backgroundColor: ThemeColor.white,
        bottomNavigationBar: const _HomeBottomNavbar(),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              color: ThemeColor.grey4,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    _HomeHeader(),
                    SizedBox(height: 16),
                    _NowShowingSection(),
                    SizedBox(height: 16),
                    _PopularSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
