import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodySectionThemeExtension extends ThemeExtension<MainScreenBodySectionThemeExtension> {
  final double spacing;
  final TextStyle titleTextStyle;

  const MainScreenBodySectionThemeExtension({
    required this.spacing,
    required this.titleTextStyle,
  });

  MainScreenBodySectionThemeExtension.fake()
      : spacing = faker.randomGenerator.decimal(),
        titleTextStyle = MyoroTypographyTheme.instance.randomTextStyle;

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
