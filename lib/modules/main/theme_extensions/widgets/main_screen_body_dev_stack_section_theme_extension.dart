import 'dart:ui';

import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyDevStackSectionThemeExtension extends ThemeExtension<MainScreenBodyDevStackSectionThemeExtension> {
  /// Spacing of the [MainScreenBodyIcon]s.
  final double spacing;

  const MainScreenBodyDevStackSectionThemeExtension({
    required this.spacing,
  });

  MainScreenBodyDevStackSectionThemeExtension.fake() : spacing = faker.randomGenerator.decimal();

  @override
  MainScreenBodyDevStackSectionThemeExtension copyWith({
    double? spacing,
  }) {
    return MainScreenBodyDevStackSectionThemeExtension(
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MainScreenBodyDevStackSectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyDevStackSectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyDevStackSectionThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
