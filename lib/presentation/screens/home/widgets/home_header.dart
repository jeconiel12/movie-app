part of '../home_screen.dart';

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/menu.svg'),
          const Spacer(),
          Text(
            'FilmKu',
            style: ThemeText.black.copyWith(fontSize: 16),
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/notif.svg'),
        ],
      ),
    );
  }
}
