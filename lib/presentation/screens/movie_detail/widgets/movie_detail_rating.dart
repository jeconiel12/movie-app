part of '../movie_detail_screen.dart';

class _MovieDetailRating extends StatelessWidget {
  const _MovieDetailRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24),
        child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
          buildWhen: (p, c) => p.movie.vote != c.movie.vote,
          builder: (context, state) {
            if (state.isMoviesLoaded) {
              return CustomVote(vote: state.movie.vote);
            }
            return const CustomShimmer(
              height: 14,
              width: 100,
            );
          },
        ));
  }
}
