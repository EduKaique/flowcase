import 'package:flowcase/ui/core/themes/colors/color_extension_scheme.dart';
import 'package:flowcase/ui/core/themes/colors/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: AppColorScheme.lightColorScheme,
    fontFamily: GoogleFonts.roboto().fontFamily,
    extensions: [
      AppColorExtensionScheme.lightColorExtensionScheme,
    ]
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: AppColorScheme.darkColorScheme,
    fontFamily: GoogleFonts.roboto().fontFamily,
    extensions: [
      AppColorExtensionScheme.darkColorExtensionScheme,
    ]
  );
}