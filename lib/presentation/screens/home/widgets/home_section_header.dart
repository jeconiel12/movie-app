part of '../home_screen.dart';

class _HomeSectionHeader extends StatelessWidget {
  final String title;

  const _HomeSectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: ThemeText.black.copyWith(fontSize: 16),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(0, 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            ),
            child: Text(
              'See More',
              style: ThemeText.regular.copyWith(
                color: ThemeColor.grey1,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
