part of '../movie_detail_screen.dart';

class _MovieDetailGenres extends StatelessWidget {
  const _MovieDetailGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
        buildWhen: (p, c) => p.movie.genres != c.movie.genres,
        builder: (context, state) {
          if (state.isMoviesLoaded) {
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: state.movie.genres.map((genre) => _buildChip(genre.name)).toList(),
            );
          } else {
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(3, (_) => const CustomShimmer(height: 14, width: 40)),
            );
          }
        },
      ),
    );
  }

  Container _buildChip(String genre) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: ThemeColor.blue2,
      ),
      child: Text(
        genre.toUpperCase(),
        style: ThemeText.bold.copyWith(
          color: ThemeColor.blue1,
          fontSize: 8,
        ),
      ),
    );
  }
}
