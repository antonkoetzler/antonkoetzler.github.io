import 'dart:ui';

import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final themeExtension1 = MainScreenBodyIconThemeExtension.fake();
  final themeExtension2 = MainScreenBodyIconThemeExtension.fake();

  test('MainScreenBodyIconThemeExtension.copyWith', () {
    MainScreenBodyIconThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.size, themeExtension1.size);
    copiedThemeExtension = themeExtension1.copyWith(size: themeExtension2.size);
    expect(copiedThemeExtension.size, themeExtension2.size);
  });

  test('MainScreenBodyIconThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.size,
        lerpDouble(themeExtension1.size, themeExtension2.size, i),
      );
    }
  });
}
