import 'package:flowcase/ui/core/themes/colors/color_extension_scheme.dart';
import 'package:flowcase/ui/core/themes/colors/color_scheme.dart';
import 'package:flowcase/ui/core/themes/type/text_extension_theme.dart';
import 'package:flowcase/ui/core/themes/type/text_theme.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: AppColorScheme.lightColorScheme,
    textTheme: AppTextTheme.textTheme,
    extensions: [
      AppColorExtensionScheme.lightColorExtensionScheme,
      AppTextExtensionTheme.base(),
    ]
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: AppColorScheme.darkColorScheme,
    textTheme: AppTextTheme.textTheme,
    extensions: [
      AppColorExtensionScheme.darkColorExtensionScheme,
      AppTextExtensionTheme.base(),
    ]
  );
}