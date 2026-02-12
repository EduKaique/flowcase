import 'package:flutter/material.dart';
import 'typography_alias.dart';

abstract final class AppTextTheme {

  static final TextTheme textTheme = TextTheme(

    // ================== DISPLAY ==================
    displayLarge: TextStyle(
      fontFamily: AppTypographyAlias.typeFaceBrand,
      fontSize: AppTypographyAlias.typeTextSize7XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingTighter,
      height: AppTypographyAlias.typeLineHeight7XL / AppTypographyAlias.typeTextSize7XL,
    ),

    displayMedium: TextStyle(
      fontFamily: AppTypographyAlias.typeFaceBrand,
      fontSize: AppTypographyAlias.typeTextSize6XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingTighter,
      height: AppTypographyAlias.typeLineHeight6XL / AppTypographyAlias.typeTextSize6XL,
    ),

    displaySmall: TextStyle(
      fontFamily: AppTypographyAlias.typeFaceBrand,
      fontSize: AppTypographyAlias.typeTextSize5XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeight5XL / AppTypographyAlias.typeTextSize5XL,
    ),

    // ================== HEADLINE ==================
    headlineLarge: TextStyle(
      fontFamily: AppTypographyAlias.typeFaceBrand,
      fontSize: AppTypographyAlias.typeTextSize4XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeight4XL / AppTypographyAlias.typeTextSize4XL,
    ),

    headlineMedium: TextStyle(
      fontFamily: AppTypographyAlias.typeFaceBrand,
      fontSize: AppTypographyAlias.typeTextSize3XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeight3XL / AppTypographyAlias.typeTextSize3XL,
    ),

    headlineSmall: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSize2XL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeight2XL / AppTypographyAlias.typeTextSize2XL,
    ),

    // ================== TITLE ==================
    titleLarge: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeXL,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeightXL / AppTypographyAlias.typeTextSizeXL,
    ),

    titleMedium: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeLG,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeLG,
    ),

    titleSmall: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeBase,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeBase,
    ),

    // ================== BODY ==================
    bodyLarge: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeLG,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingNormal,
      height: AppTypographyAlias.typeLineHeightXL / AppTypographyAlias.typeTextSizeLG,
    ),

    bodyMedium: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeBase,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingWide,
      height: AppTypographyAlias.typeLineHeightXL / AppTypographyAlias.typeTextSizeBase,
    ),

    bodySmall: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeSM,
      fontWeight: AppTypographyAlias.typeFontWeightRegular,
      letterSpacing: AppTypographyAlias.typeLetterSpacingWide,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeSM,
    ),

    // ================== LABEL ==================
    labelLarge: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeBase,
      fontWeight: AppTypographyAlias.typeFontWeightSemibold,
      letterSpacing: AppTypographyAlias.typeLetterSpacingWide,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeBase,
    ),

    labelMedium: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeSM,
      fontWeight: AppTypographyAlias.typeFontWeightSemibold,
      letterSpacing: AppTypographyAlias.typeLetterSpacingWider,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeSM,
    ),

    labelSmall: TextStyle(
      fontFamily: AppTypographyAlias.typeFacePlain,
      fontSize: AppTypographyAlias.typeTextSizeXS,
      fontWeight: AppTypographyAlias.typeFontWeightSemibold,
      letterSpacing: AppTypographyAlias.typeLetterSpacingWidest,
      height: AppTypographyAlias.typeLineHeightLG / AppTypographyAlias.typeTextSizeXS,
    ),
  );
}