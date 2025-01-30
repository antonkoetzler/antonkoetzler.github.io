import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

List<ThemeExtension> createThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ..._createCoreThemeExtensions(textTheme),
    ..._createModulesThemeExtensions(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createCoreThemeExtensions(TextTheme textTheme) {
  return [
    BulletListThemeExtension(
      textStyle: textTheme.bodyMedium!.copyWith(height: 1.75),
    ),
  ];
}

List<ThemeExtension> _createModulesThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    ..._createMainModuleThemeExtensions(colorScheme, textTheme),
  ];
}

List<ThemeExtension> _createMainModuleThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    MainScreenAppBarThemeExtension(
      titleTextStyle: textTheme.titleLarge!.copyWith(fontSize: 32),
      buttonConfiguration: MyoroHoverButtonConfiguration(
        isHovered: true,
        borderRadius: BorderRadius.circular(5),
      ),
      buttonTextStyle: textTheme.bodyMedium!.copyWith(height: 1),
    ),
    const MainScreenBodyThemeExtension(
      constraints: BoxConstraints(maxWidth: 534),
      dividerConfiguration: MyoroBasicDividerConfiguration(
        direction: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 10),
        shortValue: 1,
      ),
      padding: EdgeInsets.all(10),
      spacing: 30,
    ),
    const MainScreenBodyAboutMeSectionThemeExtension(),
    MainScreenBodyContactInformationSectionThemeExtension(
      formOfCommunicationTextStyle: textTheme.labelMedium!,
      contactInformationTextStyle: textTheme.bodyMedium!,
    ),
    const MainScreenBodyDevStackSectionThemeExtension(
      spacing: 10,
    ),
    const MainScreenBodyIconThemeExtension(
      size: 60,
    ),
    MainScreenBodyMeSectionThemeExtension(
      border: Border.all(
        width: 2,
        color: colorScheme.onPrimary,
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    MainScreenBodyProfessionalExperienceSectionThemeExtension(
      companyTextStyle: textTheme.titleMedium!,
      jobTitleTextStyle: textTheme.headlineMedium!,
      datesTextStyle: textTheme.bodyMedium!,
    ),
    MainScreenBodyProjectsSectionThemeExtension(
      projectTextStyle: textTheme.titleMedium!,
    ),
    MainScreenBodySectionThemeExtension(
      spacing: 10,
      titleTextStyle: textTheme.titleLarge!.copyWith(fontSize: 28),
    ),
    const MainScreenBodyTechStackSectionThemeExtension(
      constraints: BoxConstraints(maxWidth: 410),
      spacing: 10,
    ),
  ];
}
