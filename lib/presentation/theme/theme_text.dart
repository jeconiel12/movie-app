import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentation/theme/theme_color.dart';

class ThemeText {
  const ThemeText._();

  static final TextStyle regular = GoogleFonts.mulish(
    color: ThemeColor.text,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle semibold = GoogleFonts.mulish(
    color: ThemeColor.text,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold = GoogleFonts.mulish(
    color: ThemeColor.text,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle black = GoogleFonts.merriweather(
    color: ThemeColor.primary,
    fontWeight: FontWeight.w900,
  );
}
