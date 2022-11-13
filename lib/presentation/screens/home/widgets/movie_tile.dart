part of '../home_screen.dart';

class _MovieTile extends StatelessWidget {
  final int id;
  final String title;
  final String posterPath;
  final double vote;
  final List<int> genres;

  const _MovieTile({
    Key? key,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.vote,
    required this.genres,
  }) : super(key: key);

  String getTimeString(int value) {
    final int hour = value ~/ 60;
    final int minutes = value % 60;
    return '${hour.toString().padLeft(2, "0")}:${minutes.toString().padLeft(2, "0")}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MovieDetailScreen.routeName, arguments: id),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.226,
              child: AspectRatio(
                aspectRatio: 143 / 212,
                child: CachedNetworkImage(
                  imageUrl: '$imageUrlSmall$posterPath',
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: imageProvider,
                        ),
                      ),
                    );
                  },
                  placeholder: (context, url) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ThemeColor.grey2,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: ThemeText.bold.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  CustomVote(vote: vote),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: genres
                        .map((id) => CustomChip(genre: context.read<GenresCubit>().genre(id)))
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MovieTileLoading extends StatelessWidget {
  const _MovieTileLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.226,
            child: const AspectRatio(
              aspectRatio: 143 / 212,
              child: CustomShimmer(),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomShimmer(height: 14),
                const SizedBox(height: 8),
                const CustomShimmer(height: 14, width: 100),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(3, (_) => const CustomShimmer(height: 14, width: 40)),
                ),
                const SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
