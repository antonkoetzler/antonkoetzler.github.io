import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyIconThemeExtension extends ThemeExtension<MainScreenBodyIconThemeExtension> {
  /// Size of the image.
  final double size;

  const MainScreenBodyIconThemeExtension({
    required this.size,
  });

  MainScreenBodyIconThemeExtension.fake() : size = faker.randomGenerator.decimal();

  @override
  MainScreenBodyIconThemeExtension copyWith({
    double? size,
  }) {
    return MainScreenBodyIconThemeExtension(
      size: size ?? this.size,
    );
  }

  @override
  MainScreenBodyIconThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyIconThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyIconThemeExtension) return this;
    return copyWith(
      size: lerpDouble(size, other.size, t),
    );
  }
}
