import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MainScreenBodyProjectsSectionThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MainScreenBodyProjectsSectionThemeExtension.fake();
    themeExtension2 = MainScreenBodyProjectsSectionThemeExtension.fake();
  });

  test('MainScreenBodyProjectsSectionThemeExtension.copyWith', () {
    MainScreenBodyProjectsSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.projectTextStyle, themeExtension1.projectTextStyle);
    copiedThemeExtension = themeExtension1.copyWith(projectTextStyle: themeExtension2.projectTextStyle);
    expect(copiedThemeExtension.projectTextStyle, themeExtension2.projectTextStyle);
  });

  test('MainScreenBodyProjectsSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.projectTextStyle,
        TextStyle.lerp(themeExtension1.projectTextStyle, themeExtension2.projectTextStyle, i),
      );
    }
  });
}
