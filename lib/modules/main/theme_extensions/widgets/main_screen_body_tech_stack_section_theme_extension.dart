import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyTechStackSectionThemeExtension extends ThemeExtension<MainScreenBodyTechStackSectionThemeExtension> {
  final BoxConstraints constraints;
  final double spacing;

  const MainScreenBodyTechStackSectionThemeExtension({
    required this.constraints,
    required this.spacing,
  });

  factory MainScreenBodyTechStackSectionThemeExtension.fake() {
    final maxWidth = faker.randomGenerator.decimal();
    final maxHeight = faker.randomGenerator.decimal();

    return MainScreenBodyTechStackSectionThemeExtension(
      constraints: BoxConstraints(
        minWidth: faker.randomGenerator.decimal(scale: maxWidth),
        maxWidth: maxWidth,
        minHeight: faker.randomGenerator.decimal(scale: maxHeight),
        maxHeight: maxHeight,
      ),
      spacing: faker.randomGenerator.decimal(),
    );
  }

  @override
  MainScreenBodyTechStackSectionThemeExtension copyWith({
    BoxConstraints? constraints,
    double? spacing,
  }) {
    return MainScreenBodyTechStackSectionThemeExtension(
      constraints: constraints ?? this.constraints,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MainScreenBodyTechStackSectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyTechStackSectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyTechStackSectionThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
