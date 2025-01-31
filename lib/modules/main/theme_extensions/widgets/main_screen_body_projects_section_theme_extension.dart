import 'package:flutter/material.dart';

final class MainScreenBodyProjectsSectionThemeExtension extends ThemeExtension<MainScreenBodyProjectsSectionThemeExtension> {
  final TextStyle? projectTextStyle;

  const MainScreenBodyProjectsSectionThemeExtension({
    required this.projectTextStyle,
  });

  @override
  MainScreenBodyProjectsSectionThemeExtension copyWith({
    TextStyle? projectTextStyle,
  }) {
    return MainScreenBodyProjectsSectionThemeExtension(
      projectTextStyle: projectTextStyle ?? this.projectTextStyle,
    );
  }

  @override
  MainScreenBodyProjectsSectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyProjectsSectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyProjectsSectionThemeExtension) return this;
    return copyWith(
      projectTextStyle: TextStyle.lerp(projectTextStyle, other.projectTextStyle, t),
    );
  }
}
