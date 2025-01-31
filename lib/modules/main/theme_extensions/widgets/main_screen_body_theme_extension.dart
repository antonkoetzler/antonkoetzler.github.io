import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyThemeExtension extends ThemeExtension<MainScreenBodyThemeExtension> {
  final BoxConstraints constraints;
  final MyoroBasicDividerConfiguration dividerConfiguration;
  final EdgeInsets padding;
  final double spacing;

  const MainScreenBodyThemeExtension({
    required this.constraints,
    required this.dividerConfiguration,
    required this.padding,
    required this.spacing,
  });

  factory MainScreenBodyThemeExtension.fake() {
    final maxWidth = faker.randomGenerator.decimal();
    final maxHeight = faker.randomGenerator.decimal();

    return MainScreenBodyThemeExtension(
      constraints: BoxConstraints(
        minWidth: faker.randomGenerator.decimal(scale: maxWidth),
        maxWidth: maxWidth,
        minHeight: faker.randomGenerator.decimal(scale: maxHeight),
        maxHeight: maxHeight,
      ),
      dividerConfiguration: MyoroBasicDividerConfiguration.fake(),
      padding: EdgeInsets.all(faker.randomGenerator.decimal()),
      spacing: faker.randomGenerator.decimal(),
    );
  }

  @override
  MainScreenBodyThemeExtension copyWith({
    BoxConstraints? constraints,
    MyoroBasicDividerConfiguration? dividerConfiguration,
    EdgeInsets? padding,
    double? spacing,
  }) {
    return MainScreenBodyThemeExtension(
      constraints: constraints ?? this.constraints,
      dividerConfiguration: dividerConfiguration ?? this.dividerConfiguration,
      padding: padding ?? this.padding,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MainScreenBodyThemeExtension lerp(covariant ThemeExtension<MainScreenBodyThemeExtension>? other, double t) {
    if (other is! MainScreenBodyThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      dividerConfiguration: myoroLerp(dividerConfiguration, other.dividerConfiguration, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
