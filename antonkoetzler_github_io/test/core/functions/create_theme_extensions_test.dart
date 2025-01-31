import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final bool isDarkMode = faker.randomGenerator.boolean();
  final List<ThemeExtension> themeExtensions = createThemeExtensions(
    createMyoroColorScheme(isDarkMode),
    createMyoroTextTheme(isDarkMode),
  );

  bool themeExtensionExists<T>() {
    return themeExtensions.firstWhereOrNull((themeExtension) => themeExtension is T) != null;
  }

  test('createThemeExtensions', () {
    expect(themeExtensions.length, 13);

    /// Commons.
    expect(themeExtensionExists<BulletListThemeExtension>(), isTrue);

    /// Main module.
    expect(themeExtensionExists<MainScreenThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenAppBarThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyAboutMeSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyContactInformationSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyDevStackSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyIconThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyMeSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyProfessionalExperienceSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyProjectsSectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodySectionThemeExtension>(), isTrue);
    expect(themeExtensionExists<MainScreenBodyTechStackSectionThemeExtension>(), isTrue);
  });
}
