import 'package:flowcase/ui/core/themes/type/text_extension_theme.dart';
import 'package:flutter/material.dart';

extension TextThemeX on BuildContext {
  AppTextExtensionTheme get textExt =>
      Theme.of(this).extension<AppTextExtensionTheme>()!;
}