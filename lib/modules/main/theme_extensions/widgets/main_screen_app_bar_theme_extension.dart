import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenAppBarThemeExtension extends ThemeExtension<MainScreenAppBarThemeExtension> {
  /// [TextStyle] of [_Title].
  final TextStyle titleTextStyle;

  /// [MyoroHoverButtonConfiguration] of [_Button].
  final MyoroHoverButtonConfiguration buttonConfiguration;

  /// [TextStyle] of [_Button].
  final TextStyle buttonTextStyle;

  const MainScreenAppBarThemeExtension({
    required this.titleTextStyle,
    required this.buttonConfiguration,
    required this.buttonTextStyle,
  });

  MainScreenAppBarThemeExtension.fake()
      : titleTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        buttonConfiguration = MyoroHoverButtonConfiguration.fake(),
        buttonTextStyle = MyoroTypographyTheme.instance.randomTextStyle;

  @override
  MainScreenAppBarThemeExtension copyWith({
    TextStyle? titleTextStyle,
    MyoroHoverButtonConfiguration? buttonConfiguration,
    TextStyle? buttonTextStyle,
  }) {
    return MainScreenAppBarThemeExtension(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      buttonConfiguration: buttonConfiguration ?? this.buttonConfiguration,
      buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
    );
  }

  @override
  MainScreenAppBarThemeExtension lerp(covariant ThemeExtension<MainScreenAppBarThemeExtension>? other, double t) {
    if (other is! MainScreenAppBarThemeExtension) return this;
    return copyWith(
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      buttonConfiguration: MyoroHoverButtonConfiguration.lerp(buttonConfiguration, other.buttonConfiguration, t),
      buttonTextStyle: TextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t),
    );
  }
}
