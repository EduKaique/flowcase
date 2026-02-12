import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTypographyFoundation {

  // Font Family
  static String? typographyFamilyPrimary = GoogleFonts.dmSerifText().fontFamily;
  static String? typographyFamilySecondary = GoogleFonts.dmSans().fontFamily;

  // FontSize
  static const double typographyFontSize48 = 48;
  static const double typographyFontSize44 = 44;
  static const double typographyFontSize36 = 36;
  static const double typographyFontSize32 = 32;
  static const double typographyFontSize28 = 28;
  static const double typographyFontSize24 = 24;
  static const double typographyFontSize20 = 20;
  static const double typographyFontSize18 = 18;
  static const double typographyFontSize16 = 16;
  static const double typographyFontSize14 = 14;
  static const double typographyFontSize12 = 12;

  // Font Strength
  static const FontWeight typographyStrength400 = FontWeight.w400;
  static const FontWeight typographyStrength500 = FontWeight.w500;
  static const FontWeight typographyStrength600 = FontWeight.w600;
  static const FontWeight typographyStrength700 = FontWeight.w700;

  // Char Space
  static const double typographyCharSpace0 = 0;
  static const double typographyCharSpaceP01 = 0.10000000149011612;
  static const double typographyCharSpaceP05 = 0.5;
  static const double typographyCharSpaceP08 = 0.800000011920929;
  static const double typographyCharSpaceN015 = -0.15000000596046448;
  static const double typographyCharSpaceN025 = -0.25;

  // Leading
  static const double typographyLeading48 = 48;
  static const double typographyLeading44 = 44;
  static const double typographyLeading40 = 40;
  static const double typographyLeading36 = 36;
  static const double typographyLeading32 = 32;
  static const double typographyLeading28 = 28;
  static const double typographyLeading24 = 24;
  static const double typographyLeading20 = 20;
  static const double typographyLeading16 = 16;
}
