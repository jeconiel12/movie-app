part of '../movie_detail_screen.dart';

class _MovieDetailDescription extends StatelessWidget {
  const _MovieDetailDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailCubit, MovieDetailState>(
      buildWhen: (p, c) => p.movie.description != c.movie.description,
      builder: (context, state) {
        if (state.isMoviesLoaded) {
          return _buildDesctiption(state.movie.description);
        }
        return _buildDescriptionLoading();
      },
    );
  }

  Widget _buildDesctiption(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Description',
            style: ThemeText.black.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            style: ThemeText.regular.copyWith(
              color: ThemeColor.grey3,
              fontSize: 12,
              height: 1.6,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionLoading() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomShimmer(
            height: 16,
            width: 100,
          ),
          SizedBox(height: 8),
          CustomShimmer(height: 16),
          SizedBox(height: 4),
          CustomShimmer(height: 16),
          SizedBox(height: 4),
          CustomShimmer(height: 16),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
