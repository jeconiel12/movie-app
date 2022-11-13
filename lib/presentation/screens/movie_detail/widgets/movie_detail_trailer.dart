part of '../movie_detail_screen.dart';

class _MovieDetailTrailer extends StatefulWidget {
  const _MovieDetailTrailer({
    Key? key,
  }) : super(key: key);

  @override
  State<_MovieDetailTrailer> createState() => _MovieDetailTrailerState();
}

class _MovieDetailTrailerState extends State<_MovieDetailTrailer> {
  YoutubePlayerController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailCubit, MovieDetailState>(
      builder: (context, state) {
        if (state.isMoviesLoaded) {
          _controller = YoutubePlayerController(
            initialVideoId: state.movie.videoPath,
            flags: const YoutubePlayerFlags(autoPlay: false),
          );
          return YoutubePlayer(
            controller: _controller!,
            topActions: null,
            showVideoProgressIndicator: true,
            bottomActions: [
              CurrentPosition(),
              ProgressBar(isExpanded: true),
            ],
            onEnded: (metaData) {
              _controller!.seekTo(Duration.zero);
              _controller!.pause();
            },
          );
        }
        return Container(
          height: MediaQuery.of(context).size.width / 16 * 9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ThemeColor.grey2,
          ),
        );
      },
    );
  }
}
