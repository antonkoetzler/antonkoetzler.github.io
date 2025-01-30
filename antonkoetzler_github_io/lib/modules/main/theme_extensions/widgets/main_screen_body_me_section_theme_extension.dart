import 'package:flutter/material.dart';

final class MainScreenBodyMeSectionThemeExtension extends ThemeExtension<MainScreenBodyMeSectionThemeExtension> {
  /// Border of the [Container].
  final Border border;

  /// Border radius.
  final BorderRadius borderRadius;

  const MainScreenBodyMeSectionThemeExtension({
    required this.border,
    required this.borderRadius,
  });

  @override
  MainScreenBodyMeSectionThemeExtension copyWith({
    Border? border,
    BorderRadius? borderRadius,
  }) {
    return MainScreenBodyMeSectionThemeExtension(
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  MainScreenBodyMeSectionThemeExtension lerp(covariant ThemeExtension<MainScreenBodyMeSectionThemeExtension>? other, double t) {
    if (other is! MainScreenBodyMeSectionThemeExtension) return this;
    return copyWith(
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
    );
  }
}
