import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final themeExtension1 = MainScreenBodyMeSectionThemeExtension.fake();
  final themeExtension2 = MainScreenBodyMeSectionThemeExtension.fake();

  test('MainScreenBodyMeSectionThemeExtension.copyWith', () {
    MainScreenBodyMeSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.border, themeExtension1.border);
    expect(copiedThemeExtension.borderRadius, themeExtension1.borderRadius);
    copiedThemeExtension = themeExtension1.copyWith(
      border: themeExtension2.border,
      borderRadius: themeExtension2.borderRadius,
    );
    expect(copiedThemeExtension.border, themeExtension2.border);
    expect(copiedThemeExtension.borderRadius, themeExtension2.borderRadius);
  });

  test('MainScreenBodyMeSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
    }
  });
}
