part of '../movie_detail_screen.dart';

class _MovieDetailInfo extends StatelessWidget {
  const _MovieDetailInfo({
    Key? key,
  }) : super(key: key);

  String getTimeString(int value) {
    final int hour = value ~/ 60;
    final int minutes = value % 60;
    return '${hour.toString()}h ${minutes.toString().padLeft(2, "0")}m';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          BlocBuilder<MovieDetailCubit, MovieDetailState>(
            buildWhen: (p, c) => p.movie.duration != c.movie.duration,
            builder: (context, state) {
              if (state.isMoviesLoaded) {
                return _buildInfo(title: 'Length', value: getTimeString(state.movie.duration));
              }
              return _buildInfoLoading();
            },
          ),
          BlocBuilder<MovieDetailCubit, MovieDetailState>(
            buildWhen: (p, c) => p.movie.language != c.movie.language,
            builder: (context, state) {
              if (state.isMoviesLoaded) {
                return _buildInfo(title: 'Language', value: state.movie.language);
              }
              return _buildInfoLoading();
            },
          ),
          BlocBuilder<MovieDetailCubit, MovieDetailState>(
            buildWhen: (p, c) => p.movie.language != c.movie.language,
            builder: (context, state) {
              if (state.isMoviesLoaded) {
                return _buildInfo(title: 'Rating', value: state.movie.rating);
              }
              return _buildInfoLoading();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildInfo({required String title, required String value}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ThemeText.regular.copyWith(
              color: ThemeColor.grey3,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value.isNotEmpty ? value : '-',
            style: ThemeText.semibold.copyWith(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInfoLoading() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomShimmer(
            width: 50,
            height: 12,
          ),
          SizedBox(height: 4),
          CustomShimmer(
            width: 75,
            height: 12,
          ),
        ],
      ),
    );
  }
}
