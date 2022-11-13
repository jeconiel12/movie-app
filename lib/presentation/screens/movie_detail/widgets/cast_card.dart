part of '../movie_detail_screen.dart';

class _CastCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const _CastCard({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.2;

    return Container(
      margin: const EdgeInsets.only(right: 13),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: imagePath,
            imageBuilder: (context, imageProvider) {
              return Container(
                height: width,
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
              height: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ThemeColor.grey2,
              ),
            ),
            errorWidget: (context, url, error) => Container(
              height: width,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ThemeColor.grey2,
              ),
              child: const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: ThemeText.regular.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class _CastCardLoading extends StatelessWidget {
  const _CastCardLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.2;

    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: Column(
        children: [
          CustomShimmer(
            width: width,
            height: width,
          ),
          const SizedBox(height: 8),
          CustomShimmer(
            width: width,
            height: 12,
          ),
        ],
      ),
    );
  }
}
