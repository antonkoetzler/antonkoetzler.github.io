import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyProjectsSectionThemeExtension extends ThemeExtension<MainScreenBodyProjectsSectionThemeExtension> {
  final TextStyle projectTextStyle;

  const MainScreenBodyProjectsSectionThemeExtension({
    required this.projectTextStyle,
  });

  MainScreenBodyProjectsSectionThemeExtension.fake() : projectTextStyle = MyoroTypographyTheme.instance.randomTextStyle;

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
