import 'package:flutter/material.dart';
import 'typography_foundation.dart';

abstract final class AppTypographyAlias {

  // Font Family
  static String? typeFaceBrand = AppTypographyFoundation.typographyFamilyPrimary;
  static String? typeFacePlain = AppTypographyFoundation.typographyFamilySecondary;

  // Font Sizes
  static const double typeTextSize7XL = AppTypographyFoundation.typographyFontSize48;
  static const double typeTextSize6XL = AppTypographyFoundation.typographyFontSize44;
  static const double typeTextSize5XL = AppTypographyFoundation.typographyFontSize36;
  static const double typeTextSize4XL = AppTypographyFoundation.typographyFontSize32;
  static const double typeTextSize3XL = AppTypographyFoundation.typographyFontSize28;
  static const double typeTextSize2XL = AppTypographyFoundation.typographyFontSize24;
  static const double typeTextSizeXL  = AppTypographyFoundation.typographyFontSize20;
  static const double typeTextSizeLG  = AppTypographyFoundation.typographyFontSize18;
  static const double typeTextSizeBase = AppTypographyFoundation.typographyFontSize16;
  static const double typeTextSizeSM  = AppTypographyFoundation.typographyFontSize14;
  static const double typeTextSizeXS  = AppTypographyFoundation.typographyFontSize12;

  // Line Height
  static const double typeLineHeight7XL = AppTypographyFoundation.typographyLeading48;
  static const double typeLineHeight6XL = AppTypographyFoundation.typographyLeading44;
  static const double typeLineHeight5XL = AppTypographyFoundation.typographyLeading40;
  static const double typeLineHeight4XL = AppTypographyFoundation.typographyLeading36;
  static const double typeLineHeight3XL = AppTypographyFoundation.typographyLeading32;
  static const double typeLineHeight2XL = AppTypographyFoundation.typographyLeading28;
  static const double typeLineHeightXL  = AppTypographyFoundation.typographyLeading24;
  static const double typeLineHeightLG  = AppTypographyFoundation.typographyLeading20;
  static const double typeLineHeightBase = AppTypographyFoundation.typographyLeading16;

  // Font Weight
  static const FontWeight typeFontWeightRegular  = AppTypographyFoundation.typographyStrength400;
  static const FontWeight typeFontWeightMedium   = AppTypographyFoundation.typographyStrength500;
  static const FontWeight typeFontWeightSemibold = AppTypographyFoundation.typographyStrength600;
  static const FontWeight typeFontWeightBold     = AppTypographyFoundation.typographyStrength700;

  // Letter Spacing
  static const double typeLetterSpacingTighter = AppTypographyFoundation.typographyCharSpaceN025;
  static const double typeLetterSpacingTight   = AppTypographyFoundation.typographyCharSpaceN015;
  static const double typeLetterSpacingNormal  = AppTypographyFoundation.typographyCharSpace0;
  static const double typeLetterSpacingWide    = AppTypographyFoundation.typographyCharSpaceP01;
  static const double typeLetterSpacingWider   = AppTypographyFoundation.typographyCharSpaceP05;
  static const double typeLetterSpacingWidest  = AppTypographyFoundation.typographyCharSpaceP08;
}
