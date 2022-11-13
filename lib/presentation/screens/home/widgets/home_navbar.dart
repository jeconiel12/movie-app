part of '../home_screen.dart';

class _HomeBottomNavbar extends StatelessWidget {
  const _HomeBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/nav_1.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/nav_2.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/nav_3.svg'),
          label: '',
        ),
      ],
    );
  }
}
