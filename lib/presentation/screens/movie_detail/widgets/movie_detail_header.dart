part of '../movie_detail_screen.dart';

class _MovieDetailHeader extends StatelessWidget {
  const _MovieDetailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _MovieDetailTrailer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset('assets/icons/back.svg'),
              ),
              SvgPicture.asset('assets/icons/more.svg'),
            ],
          ),
        ),
      ],
    );
  }
}
