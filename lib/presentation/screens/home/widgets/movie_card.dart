part of '../home_screen.dart';

class _MovieCard extends StatelessWidget {
  final int id;
  final String title;
  final String posterPath;
  final double vote;

  const _MovieCard({
    Key? key,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.vote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MovieDetailScreen.routeName, arguments: id),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 143 / 212,
              child: CachedNetworkImage(
                imageUrl: posterPath,
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
            const SizedBox(height: 12),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: ThemeText.bold.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 8),
            CustomVote(vote: vote),
          ],
        ),
      ),
    );
  }
}

class _MovieCardLoading extends StatelessWidget {
  const _MovieCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.38;

    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AspectRatio(
            aspectRatio: 143 / 212,
            child: CustomShimmer(
              height: 14,
            ),
          ),
          const SizedBox(height: 12),
          const CustomShimmer(height: 14),
          const SizedBox(height: 8),
          CustomShimmer(height: 14, width: width / 2)
        ],
      ),
    );
  }
}
