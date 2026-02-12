import 'dimension_foundation.dart';

abstract final class AppDimensionAlias {
  // ================== SPACING ==================
  static const double spacingNone = AppDimensionFoundation.spacersSpace0;
  static const double spacing3XS = AppDimensionFoundation.spacersSpace4;
  static const double spacing2X = AppDimensionFoundation.spacersSpace8;
  static const double spacingXS = AppDimensionFoundation.spacersSpace12;
  static const double spacingSm = AppDimensionFoundation.spacersSpace16;
  static const double spacingMd = AppDimensionFoundation.spacersSpace24;
  static const double spacingLg = AppDimensionFoundation.spacersSpace32;
  static const double spacingXL = AppDimensionFoundation.spacersSpace48;
  static const double spacing2XL = AppDimensionFoundation.spacersSpace64;
  static const double spacing3XL = AppDimensionFoundation.spacersSpace80;

  // ================== RADIUS ==================
  static const double radiusNone = AppDimensionFoundation.radii0;
  static const double radiusXSmall = AppDimensionFoundation.radii4;
  static const double radiusSmall = AppDimensionFoundation.radii8;
  static const double radiusMedium = AppDimensionFoundation.radii12;
  static const double radiusLarge = AppDimensionFoundation.radii16;
  static const double radiusXLarge = AppDimensionFoundation.radii28;
  static const double radiusPill = AppDimensionFoundation.radiiFull;

  // ================== BORDER ==================
  static const double borderNone = AppDimensionFoundation.stroke0;
  static const double borderHairline = AppDimensionFoundation.stroke10;
  static const double borderThin = AppDimensionFoundation.stroke15;
  static const double borderStrong = AppDimensionFoundation.stroke20;
  static const double borderXStrong = AppDimensionFoundation.stroke40;
}
