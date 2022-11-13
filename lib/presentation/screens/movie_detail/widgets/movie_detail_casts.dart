part of '../movie_detail_screen.dart';

class _MovieDetailCasts extends StatelessWidget {
  const _MovieDetailCasts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailCubit, MovieDetailState>(
      buildWhen: (p, c) => p.movie.casts != c.movie.casts,
      builder: (context, state) {
        if (state.isMoviesLoaded) {
          return _buildCasts();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: CustomShimmer(
                height: 16,
                width: 100,
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(4, (_) => const _CastCardLoading()),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCasts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Cast',
            style: ThemeText.black.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 8),
        BlocBuilder<MovieDetailCubit, MovieDetailState>(
          buildWhen: (p, c) => p.movie.casts != c.movie.casts,
          builder: (context, state) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.movie.casts
                      .map(
                        (cast) => _CastCard(
                          imagePath: '$imageUrlMedium${cast.imagePath}',
                          name: cast.name,
                        ),
                      )
                      .toList(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
