import 'package:flutter/material.dart';
import 'text_theme.dart';
import 'typography_alias.dart';

@immutable
class AppTextExtensionTheme extends ThemeExtension<AppTextExtensionTheme> {
  final TextStyle headlineSmallEmphasized;
  final TextStyle titleLargeEmphasized;
  final TextStyle titleMediumEmphasized;
  final TextStyle titleSmallEmphasized;
  final TextStyle bodyLargeEmphasized;
  final TextStyle bodyMediumEmphasized;
  final TextStyle bodySmallEmphasized;

  const AppTextExtensionTheme({
    required this.headlineSmallEmphasized,
    required this.titleLargeEmphasized,
    required this.titleMediumEmphasized,
    required this.titleSmallEmphasized,
    required this.bodyLargeEmphasized,
    required this.bodyMediumEmphasized,
    required this.bodySmallEmphasized,
  });

  factory AppTextExtensionTheme.base() {
    final t = AppTextTheme.textTheme;
    final semiBold = AppTypographyAlias.typeFontWeightSemibold;

    return AppTextExtensionTheme(
      headlineSmallEmphasized: t.headlineSmall!.copyWith(fontWeight: semiBold),
      titleLargeEmphasized: t.titleLarge!.copyWith(fontWeight: semiBold),
      titleMediumEmphasized: t.titleMedium!.copyWith(fontWeight: semiBold),
      titleSmallEmphasized: t.titleSmall!.copyWith(fontWeight: semiBold),
      bodyLargeEmphasized: t.bodyLarge!.copyWith(fontWeight: semiBold),
      bodyMediumEmphasized: t.bodyMedium!.copyWith(fontWeight: semiBold),
      bodySmallEmphasized: t.bodySmall!.copyWith(fontWeight: semiBold),
    );
  }

  @override
  AppTextExtensionTheme copyWith() => this;

  @override
  AppTextExtensionTheme lerp(
    ThemeExtension<AppTextExtensionTheme>? other,
    double t,
  ) {
    if (other is! AppTextExtensionTheme) return this;
    return this;
  }
}
