import 'dart:ui';

import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final themeExtension1 = MainScreenBodyDevStackSectionThemeExtension.fake();
  final themeExtension2 = MainScreenBodyDevStackSectionThemeExtension.fake();

  test('MainScreenBodyDevStackSectionThemeExtension.copyWith', () {
    MainScreenBodyDevStackSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.spacing, themeExtension1.spacing);
    copiedThemeExtension = themeExtension1.copyWith(spacing: themeExtension2.spacing);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
  });

  test('MainScreenBodyDevStackSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
