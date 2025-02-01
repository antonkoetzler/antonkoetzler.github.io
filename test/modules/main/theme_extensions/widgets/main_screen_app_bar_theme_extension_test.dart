import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MainScreenAppBarThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MainScreenAppBarThemeExtension.fake();
    themeExtension2 = MainScreenAppBarThemeExtension.fake();
  });

  test('MainScreenAppBarThemeExtension.copyWith', () {
    MainScreenAppBarThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.titleTextStyle, themeExtension1.titleTextStyle);
    expect(copiedThemeExtension.buttonConfiguration, themeExtension1.buttonConfiguration);
    expect(copiedThemeExtension.buttonTextStyle, themeExtension1.buttonTextStyle);
    copiedThemeExtension = themeExtension1.copyWith(
      titleTextStyle: themeExtension2.titleTextStyle,
      buttonConfiguration: themeExtension2.buttonConfiguration,
      buttonTextStyle: themeExtension2.buttonTextStyle,
    );
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
    expect(copiedThemeExtension.buttonConfiguration, themeExtension2.buttonConfiguration);
    expect(copiedThemeExtension.buttonTextStyle, themeExtension2.buttonTextStyle);
  });

  test('MainScreenAppBarThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(
          themeExtension1.titleTextStyle,
          themeExtension2.titleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonConfiguration,
        MyoroHoverButtonConfiguration.lerp(
          themeExtension1.buttonConfiguration,
          themeExtension2.buttonConfiguration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonTextStyle,
        TextStyle.lerp(
          themeExtension1.buttonTextStyle,
          themeExtension2.buttonTextStyle,
          i,
        ),
      );
    }
  });
}
