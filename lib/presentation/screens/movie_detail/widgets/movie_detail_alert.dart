part of '../movie_detail_screen.dart';

class _MovieDetailAlert extends StatelessWidget {
  final int movieId;

  const _MovieDetailAlert({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: ThemeColor.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              Text(
                context.read<MovieDetailCubit>().state.failureMessage,
                style: ThemeText.semibold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                icon: const Icon(Icons.restart_alt),
                label: Text(
                  'Retry',
                  style: ThemeText.regular.copyWith(color: ThemeColor.white),
                ),
                onPressed: () {
                  context.read<MovieDetailCubit>().getMovieDetail(movieId);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
