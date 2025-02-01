import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final BulletListThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = BulletListThemeExtension.fake();
    themeExtension2 = BulletListThemeExtension.fake();
  });

  test('BulletListThemeExtension.copyWith', () {
    BulletListThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.textStyle, themeExtension1.textStyle);
    copiedThemeExtension = themeExtension1.copyWith(textStyle: themeExtension2.textStyle);
    expect(copiedThemeExtension.textStyle, themeExtension2.textStyle);
  });

  test('BulletListThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
    }
  });
}
