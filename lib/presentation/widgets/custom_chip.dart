import 'package:flutter/material.dart';
import 'package:movie_app/presentation/theme/theme_color.dart';
import 'package:movie_app/presentation/theme/theme_text.dart';

class CustomChip extends StatelessWidget {
  final String genre;

  const CustomChip({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return genre.isNotEmpty
        ? Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: ThemeColor.blue2,
            ),
            child: Text(
              genre.toUpperCase(),
              style: ThemeText.bold.copyWith(
                color: ThemeColor.blue1,
                fontSize: 8,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
