import 'dart:ui';

import 'package:antonkoetzler_github_io/modules/main/theme_extensions/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final themeExtension1 = MainScreenBodyTechStackSectionThemeExtension.fake();
  final themeExtension2 = MainScreenBodyTechStackSectionThemeExtension.fake();

  test('MainScreenBodyTechStackSectionThemeExtension.copyWith', () {
    MainScreenBodyTechStackSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.constraints, themeExtension1.constraints);
    expect(copiedThemeExtension.spacing, themeExtension1.spacing);
    copiedThemeExtension = themeExtension2.copyWith(
      constraints: themeExtension2.constraints,
      spacing: themeExtension2.spacing,
    );
    expect(copiedThemeExtension.constraints, themeExtension2.constraints);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
  });

  test('MainScreenBodyTechStackSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.constraints,
        BoxConstraints.lerp(themeExtension1.constraints, themeExtension2.constraints, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
