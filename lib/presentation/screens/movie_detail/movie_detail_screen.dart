import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../application/movie_detail/movie_detail_cubit.dart';
import '../../../core/constants.dart';
import '../../../core/constants/theme_color.dart';
import '../../../core/constants/theme_text.dart';
import '../../../di/injection.dart';
import '../../widgets/custom_shimmer.dart';
import '../../widgets/custom_vote.dart';

part 'widgets/cast_card.dart';
part 'widgets/movie_detail_alert.dart';
part 'widgets/movie_detail_casts.dart';
part 'widgets/movie_detail_description.dart';
part 'widgets/movie_detail_genres.dart';
part 'widgets/movie_detail_header.dart';
part 'widgets/movie_detail_info.dart';
part 'widgets/movie_detail_rating.dart';
part 'widgets/movie_detail_title.dart';
part 'widgets/movie_detail_trailer.dart';

class MovieDetailScreen extends StatefulWidget {
  static const String routeName = '/movie-detail';

  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  late final int movieId;
  late final MovieDetailCubit _movieDetailCubit;

  @override
  void initState() {
    super.initState();
    _movieDetailCubit = getIt<MovieDetailCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      movieId = ModalRoute.of(context)!.settings.arguments as int;
      _movieDetailCubit.getMovieDetail(movieId);
    });
  }

  @override
  void dispose() {
    _movieDetailCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _movieDetailCubit,
      child: BlocListener<MovieDetailCubit, MovieDetailState>(
        listenWhen: (p, c) => p.isFailure != c.isFailure && c.isFailure,
        listener: (context, state) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) {
              return BlocProvider.value(
                value: BlocProvider.of<MovieDetailCubit>(context),
                child: _MovieDetailAlert(movieId: movieId),
              );
            },
          );
        },
        child: Scaffold(
          backgroundColor: ThemeColor.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const _MovieDetailHeader(),
                  Container(
                    color: ThemeColor.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 24),
                        _MovieDetailTitle(),
                        SizedBox(height: 8),
                        _MovieDetailRating(),
                        SizedBox(height: 16),
                        _MovieDetailGenres(),
                        SizedBox(height: 16),
                        _MovieDetailInfo(),
                        SizedBox(height: 24),
                        _MovieDetailDescription(),
                        SizedBox(height: 24),
                        _MovieDetailCasts(),
                        SizedBox(height: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
