import 'dart:ui';

import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MainScreenBodySectionThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MainScreenBodySectionThemeExtension.fake();
    themeExtension2 = MainScreenBodySectionThemeExtension.fake();
  });

  test('MainScreenBodySectionThemeExtension.copyWith', () {
    MainScreenBodySectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.spacing, themeExtension1.spacing);
    expect(copiedThemeExtension.titleTextStyle, themeExtension1.titleTextStyle);
    copiedThemeExtension = themeExtension1.copyWith(
      spacing: themeExtension2.spacing,
      titleTextStyle: themeExtension2.titleTextStyle,
    );
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
  });

  test('MainScreenBodySectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
    }
  });
}
