import 'dart:ui';

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
  ThemeExtension<MainScreenBodyThemeExtension> lerp(covariant ThemeExtension<MainScreenBodyThemeExtension>? other, double t) {
    if (other is! MainScreenBodyThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      dividerConfiguration: myoroLerp(dividerConfiguration, other.dividerConfiguration, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
