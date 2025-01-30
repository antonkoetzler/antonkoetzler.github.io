import 'package:flutter/material.dart';

final class BulletListThemeExtension extends ThemeExtension<BulletListThemeExtension> {
  final TextStyle textStyle;

  const BulletListThemeExtension({
    required this.textStyle,
  });

  @override
  BulletListThemeExtension copyWith({
    TextStyle? textStyle,
  }) {
    return BulletListThemeExtension(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  BulletListThemeExtension lerp(covariant ThemeExtension<BulletListThemeExtension>? other, double t) {
    if (other is! BulletListThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
