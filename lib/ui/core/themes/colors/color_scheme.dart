import 'package:flutter/material.dart';
import 'colors_alias_light.dart';
import 'colors_alias_dark.dart';

abstract final class AppColorScheme {

  static const lightColorScheme = ColorScheme.light(
    primary: AppColorsLight.colorBrandPrimaryAction,
    onPrimary: AppColorsLight.colorBrandPrimaryOnAction,
    primaryContainer: AppColorsLight.colorBrandPrimaryContainer,
    onPrimaryContainer: AppColorsLight.colorBrandPrimaryOnContainer,
    secondary: AppColorsLight.colorBrandSecondaryBase,
    onSecondary: AppColorsLight.colorBrandSecondaryOnBase,
    secondaryContainer: AppColorsLight.colorBrandSecondaryContainer,
    onSecondaryContainer: AppColorsLight.colorBrandSecondaryOnContainer,
    surface: AppColorsLight.colorBackgroundScreen,
    // surfaceVariant: AppColorsLight.colorBackgroundContainerBase, //DEPRECATED
    surfaceDim: AppColorsLight.colorBackgroundDim,
    surfaceBright: AppColorsLight.colorBackgroundBright,
    surfaceTint: AppColorsLight.colorBackgroundTint,
    onSurface: AppColorsLight.colorBrandSecondaryBase,
    onSurfaceVariant: AppColorsLight.colorContentSecondary,
    surfaceContainerLowest: AppColorsLight.colorBackgroundContainerLowest,
    surfaceContainerLow: AppColorsLight.colorBackgroundContainerLow,
    surfaceContainer: AppColorsLight.colorBackgroundContainerBase,
    surfaceContainerHigh: AppColorsLight.colorBackgroundContainerHigh,
    surfaceContainerHighest: AppColorsLight.colorBackgroundContainerHighest,
    outline: AppColorsLight.colorBorderStrong,
    outlineVariant: AppColorsLight.colorBorderSubtle,
    error: AppColorsLight.colorFeedbackErrorBase,
    onError: AppColorsLight.colorFeedbackErrorOnBase,
    errorContainer: AppColorsLight.colorFeedbackErrorContainer,
    onErrorContainer: AppColorsLight.colorFeedbackErrorOnContainer,
  );
  
  static const darkColorScheme = ColorScheme.dark(
    primary: AppColorsDark.colorBrandPrimaryAction,
    onPrimary: AppColorsDark.colorBrandPrimaryOnAction,
    primaryContainer: AppColorsDark.colorBrandPrimaryContainer,
    onPrimaryContainer: AppColorsDark.colorBrandPrimaryOnContainer,
    secondary: AppColorsDark.colorBrandSecondaryBase,
    onSecondary: AppColorsDark.colorBrandSecondaryOnBase,
    secondaryContainer: AppColorsDark.colorBrandSecondaryContainer,
    onSecondaryContainer: AppColorsDark.colorBrandSecondaryOnContainer,
    surface: AppColorsDark.colorBackgroundScreen,
    // surfaceVariant: AppColorsLight.colorBackgroundContainerBase, //DEPRECATED
    surfaceDim: AppColorsDark.colorBackgroundDim,
    surfaceBright: AppColorsDark.colorBackgroundBright,
    surfaceTint: AppColorsDark.colorBackgroundTint,
    onSurface: AppColorsDark.colorBrandSecondaryBase,
    onSurfaceVariant: AppColorsDark.colorContentSecondary,
    surfaceContainerLowest: AppColorsDark.colorBackgroundContainerLowest,
    surfaceContainerLow: AppColorsDark.colorBackgroundContainerLow,
    surfaceContainer: AppColorsDark.colorBackgroundContainerBase,
    surfaceContainerHigh: AppColorsDark.colorBackgroundContainerHigh,
    surfaceContainerHighest: AppColorsDark.colorBackgroundContainerHighest,
    outline: AppColorsDark.colorBorderStrong,
    outlineVariant: AppColorsDark.colorBorderSubtle,
    error: AppColorsDark.colorFeedbackErrorBase,
    onError: AppColorsDark.colorFeedbackErrorOnBase,
    errorContainer: AppColorsDark.colorFeedbackErrorContainer,
    onErrorContainer: AppColorsDark.colorFeedbackErrorOnContainer,
  );


}