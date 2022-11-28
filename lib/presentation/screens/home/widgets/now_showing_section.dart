part of '../home_screen.dart';

class _NowShowingSection extends StatelessWidget {
  const _NowShowingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _HomeSectionHeader(title: 'Now Showing'),
        SizedBox(
          height: (MediaQuery.of(context).size.width * 0.38 / 143 * 212) + 80,
          child: BlocBuilder<NowShowingCubit, NowShowingState>(
            buildWhen: (p, c) => p.isLoading != c.isLoading,
            builder: (context, state) {
              if (state.isMoviesLoaded) {
                return _buildCardList(state.movies);
              } else if (state.isFailure) {
                return _buildRetry(
                  failure: state.failureMessage,
                  onTap: context.read<NowShowingCubit>().getNowShowing,
                );
              } else {
                return _buildLoadingList();
              }
            },
          ),
        ),
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

  Widget _buildCardList(List<MovieModel> movies) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return _MovieCard(
          id: movies[index].id!,
          title: movies[index].title,
          posterPath:
              '${TMDBUrlConfig.imageUrlMedium}${movies[index].posterPath}',
          vote: movies[index].vote,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 16),
    );
  }

  Widget _buildLoadingList() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const _MovieCardLoading();
      },
      separatorBuilder: (_, __) => const SizedBox(width: 16),
    );
  }
}
