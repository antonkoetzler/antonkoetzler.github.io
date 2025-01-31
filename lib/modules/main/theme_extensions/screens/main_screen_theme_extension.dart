import 'package:flutter/material.dart';

final class MainScreenThemeExtension extends ThemeExtension<MainScreenThemeExtension> {
  const MainScreenThemeExtension();

  @override
  MainScreenThemeExtension copyWith() => this;

  @override
  MainScreenThemeExtension lerp(covariant ThemeExtension<MainScreenThemeExtension>? other, double t) {
    return this;
  }
}
