import 'colors_foundation.dart';

abstract final class AppColorsLight {
  // Brand Primary
  static const colorBrandPrimaryAction = AppColorsFoundation.mintGreen78;
  static const colorBrandPrimaryOnAction = AppColorsFoundation.navyBlue15;
  static const colorBrandPrimaryContainer = AppColorsFoundation.mintGreen95;
  static const colorBrandPrimaryOnContainer = AppColorsFoundation.mintGreen10;
  static const colorBrandPrimaryHover = AppColorsFoundation.mintGreen40;

  // Brand Secondary
  static const colorBrandSecondaryBase = AppColorsFoundation.navyBlue15;
  static const colorBrandSecondaryOnBase = AppColorsFoundation.navyBlue100;
  static const colorBrandSecondaryContainer = AppColorsFoundation.navyBlue90;
  static const colorBrandSecondaryOnContainer = AppColorsFoundation.navyBlue10;

  // Background
  static const colorBackgroundScreen = AppColorsFoundation.neutral98;
  static const colorBackgroundDim = AppColorsFoundation.neutral87;
  static const colorBackgroundBright = AppColorsFoundation.neutral98;
  static const colorBackgroundTint = colorBrandPrimaryAction;
  
  // Background Container
  static const colorBackgroundContainerLowest = AppColorsFoundation.neutral100;
  static const colorBackgroundContainerLow = AppColorsFoundation.neutral96;
  static const colorBackgroundContainerBase = AppColorsFoundation.neutral94;
  static const colorBackgroundContainerHigh = AppColorsFoundation.neutral92;
  static const colorBackgroundContainerHighest = AppColorsFoundation.neutral90;

  // Content
  static const colorContentPrimary = AppColorsFoundation.navyBlue15;
  static const colorContentSecondary = AppColorsFoundation.neutralVariant20;

  // Border
  static const colorBorderStrong = AppColorsFoundation.neutralVariant50;
  static const colorBorderSubtle = AppColorsFoundation.neutralVariant30;

  // Feedback Error
  static const colorFeedbackErrorBase = AppColorsFoundation.crimsonRed40;
  static const colorFeedbackErrorOnBase = AppColorsFoundation.crimsonRed100;
  static const colorFeedbackErrorContainer = AppColorsFoundation.crimsonRed90;
  static const colorFeedbackErrorOnContainer = AppColorsFoundation.crimsonRed10;

  // Feedback Success
  static const colorFeedbackSuccessBase = AppColorsFoundation.emeraldGreen40;
  static const colorFeedbackSuccessOnBase = AppColorsFoundation.emeraldGreen100;
  static const colorFeedbackSuccessContainer = AppColorsFoundation.emeraldGreen90;
  static const colorFeedbackSuccessOnContainer = AppColorsFoundation.emeraldGreen10;

  // Feedback Warning
  static const colorFeedbackWarningBase = AppColorsFoundation.amberYellow70;
  static const colorFeedbackWarningOnBase = AppColorsFoundation.amberYellow10;
  static const colorFeedbackWarningContainer = AppColorsFoundation.amberYellow90;
  static const colorFeedbackWarningOnContainer = AppColorsFoundation.amberYellow10;

  // Feedback Info
  static const colorFeedbackInfoBase = AppColorsFoundation.azureBlue40;
  static const colorFeedbackInfoOnBase = AppColorsFoundation.azureBlue100;
  static const colorFeedbackInfoContainer = AppColorsFoundation.azureBlue90;
  static const colorFeedbackInfoOnContainer = AppColorsFoundation.azureBlue20;
}