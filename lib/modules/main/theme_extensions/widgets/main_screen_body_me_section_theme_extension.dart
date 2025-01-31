import 'package:flutter/material.dart';

final class MainScreenBodyMeSectionThemeExtension extends ThemeExtension<MainScreenBodyMeSectionThemeExtension> {
  /// [BoxConstraints] of [Container].
  final BoxConstraints constraints;

  /// [BoxDecoration] of [Container].
  final BoxDecoration decoration;

  const MainScreenBodyMeSectionThemeExtension({
    required this.constraints,
    required this.decoration,
  });

  @override
  MainScreenBodyMeSectionThemeExtension copyWith({
    BoxConstraints? constraints,
    BoxDecoration? decoration,
  }) {
    return MainScreenBodyMeSectionThemeExtension(
      constraints: constraints ?? this.constraints,
      decoration: decoration ?? this.decoration,
    );
  }

  @override
  MainScreenBodyMeSectionThemeExtension lerp(covariant ThemeExtension<MainScreenBodyMeSectionThemeExtension>? other, double t) {
    if (other is! MainScreenBodyMeSectionThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
    );
  }
}
