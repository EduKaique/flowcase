import 'colors_alias_light.dart';
import 'colors_alias_dark.dart';
import 'colors_extension.dart';

abstract final class AppColorExtensionScheme {
  static const lightColorExtensionScheme = ColorsExtension(
    success: AppColorsLight.colorFeedbackSuccessBase,
    onSuccess: AppColorsLight.colorFeedbackSuccessOnBase,
    successContainer: AppColorsLight.colorFeedbackSuccessContainer,
    onSuccessContainer: AppColorsLight.colorFeedbackSuccessOnContainer,

    warning: AppColorsLight.colorFeedbackWarningBase,
    onWarning: AppColorsLight.colorFeedbackWarningOnBase,
    warningContainer: AppColorsLight.colorFeedbackWarningContainer,
    onWarningContainer: AppColorsLight.colorFeedbackWarningOnContainer,

    info: AppColorsLight.colorFeedbackInfoBase,
    onInfo: AppColorsLight.colorFeedbackInfoOnBase,
    infoContainer: AppColorsLight.colorFeedbackInfoContainer,
    onInfoContainer: AppColorsLight.colorFeedbackInfoOnContainer,
  );

  static const darkColorExtensionScheme = ColorsExtension(
    success: AppColorsDark.colorFeedbackSuccessBase,
    onSuccess: AppColorsDark.colorFeedbackSuccessOnBase,
    successContainer: AppColorsDark.colorFeedbackSuccessContainer,
    onSuccessContainer: AppColorsDark.colorFeedbackSuccessOnContainer,

    warning: AppColorsDark.colorFeedbackWarningBase,
    onWarning: AppColorsDark.colorFeedbackWarningOnBase,
    warningContainer: AppColorsDark.colorFeedbackWarningContainer,
    onWarningContainer: AppColorsDark.colorFeedbackWarningOnContainer,

    info: AppColorsDark.colorFeedbackInfoBase,
    onInfo: AppColorsDark.colorFeedbackInfoOnBase,
    infoContainer: AppColorsDark.colorFeedbackInfoContainer,
    onInfoContainer: AppColorsDark.colorFeedbackInfoOnContainer,
  );
}
