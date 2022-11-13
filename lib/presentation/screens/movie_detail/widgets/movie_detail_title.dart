part of '../movie_detail_screen.dart';

class _MovieDetailTitle extends StatelessWidget {
  const _MovieDetailTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
        buildWhen: (p, c) => p.movie.title != c.movie.title,
        builder: (context, state) {
          if (state.isMoviesLoaded) {
            return Row(
              children: [
                Expanded(
                  child: Text(
                    state.movie.title,
                    style: ThemeText.bold.copyWith(fontSize: 20),
                  ),
                ),
                const SizedBox(width: 50),
                SvgPicture.asset('assets/icons/bookmark.svg')
              ],
            );
          }
          return const CustomShimmer(height: 24);
        },
      ),
    );
  }
}
