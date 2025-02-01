import 'dart:ui';

import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MainScreenBodyThemeExtension.fake();
  final themeExtension2 = MainScreenBodyThemeExtension.fake();

  test('MainScreenBodyThemeExtension.copyWith', () {
    MainScreenBodyThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.constraints, themeExtension1.constraints);
    expect(copiedThemeExtension.dividerConfiguration, themeExtension1.dividerConfiguration);
    expect(copiedThemeExtension.padding, themeExtension1.padding);
    expect(copiedThemeExtension.spacing, themeExtension1.spacing);
    copiedThemeExtension = themeExtension1.copyWith(
      constraints: themeExtension2.constraints,
      dividerConfiguration: themeExtension2.dividerConfiguration,
      padding: themeExtension2.padding,
      spacing: themeExtension2.spacing,
    );
    expect(copiedThemeExtension.constraints, themeExtension2.constraints);
    expect(copiedThemeExtension.dividerConfiguration, themeExtension2.dividerConfiguration);
    expect(copiedThemeExtension.padding, themeExtension2.padding);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
  });

  test('MainScreenBodyThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.constraints,
        BoxConstraints.lerp(themeExtension1.constraints, themeExtension2.constraints, i),
      );
      expect(
        lerpedThemeExtension.dividerConfiguration,
        myoroLerp(themeExtension1.dividerConfiguration, themeExtension2.dividerConfiguration, i),
      );
      expect(
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
