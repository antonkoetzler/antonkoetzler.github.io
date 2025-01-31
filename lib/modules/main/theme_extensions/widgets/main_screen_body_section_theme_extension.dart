import 'dart:ui';

import 'package:flutter/material.dart';

final class MainScreenBodySectionThemeExtension extends ThemeExtension<MainScreenBodySectionThemeExtension> {
  final double spacing;
  final TextStyle titleTextStyle;

  const MainScreenBodySectionThemeExtension({
    required this.spacing,
    required this.titleTextStyle,
  });

  @override
  MainScreenBodySectionThemeExtension copyWith({
    double? spacing,
    TextStyle? titleTextStyle,
  }) {
    return MainScreenBodySectionThemeExtension(
      spacing: spacing ?? this.spacing,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
    );
  }

  @override
  MainScreenBodySectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodySectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodySectionThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
    );
  }
}
