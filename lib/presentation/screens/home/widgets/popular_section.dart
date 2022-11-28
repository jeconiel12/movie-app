part of '../home_screen.dart';

class _PopularSection extends StatelessWidget {
  const _PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _HomeSectionHeader(title: 'Popular'),
        BlocBuilder<PopularCubit, PopularState>(
          buildWhen: (p, c) => p.isLoading != c.isLoading,
          builder: (context, state) {
            if (state.isMoviesLoaded) {
              return _buildTileList(state.movies);
            } else if (state.isFailure) {
              return _buildRetry(
                failure: state.failureMessage,
                onTap: context.read<PopularCubit>().getPopular,
              );
            } else {
              return _buildLoadingList();
            }
          },
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _buildRetry({required String failure, required VoidCallback onTap}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity),
        Text(
          failure,
          style: ThemeText.semibold.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.restart_alt),
          label: Text(
            'Retry',
            style: ThemeText.regular.copyWith(color: ThemeColor.white),
          ),
          onPressed: onTap,
        ),
      ],
    );
  }

  Widget _buildTileList(List<MovieModel> movies) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return _MovieTile(
          id: movies[index].id!,
          title: movies[index].title,
          posterPath:
              '${TMDBUrlConfig.imageUrlSmall}${movies[index].posterPath}',
          vote: movies[index].vote,
          genres: movies[index].genres,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }

  Widget _buildLoadingList() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const _MovieTileLoading();
      },
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}
