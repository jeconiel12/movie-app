import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/theme_color.dart';
import '../../core/constants/theme_text.dart';

class CustomVote extends StatelessWidget {
  final double vote;

  const CustomVote({
    Key? key,
    required this.vote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/star.svg'),
        const SizedBox(width: 4),
        Text(
          '$vote/10 TMDb',
          style: ThemeText.bold.copyWith(
            color: ThemeColor.grey3,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
