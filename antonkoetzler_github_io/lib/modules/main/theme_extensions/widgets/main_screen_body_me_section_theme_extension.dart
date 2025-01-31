import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSectionThemeExtension extends ThemeExtension<MainScreenBodyMeSectionThemeExtension> {
  /// Border of the [Container].
  final Border border;

  /// Border radius.
  final BorderRadius borderRadius;

  const MainScreenBodyMeSectionThemeExtension({
    required this.border,
    required this.borderRadius,
  });

  MainScreenBodyMeSectionThemeExtension.fake()
      : border = Border.all(
          width: faker.randomGenerator.decimal(scale: 10),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
        borderRadius = BorderRadius.circular(faker.randomGenerator.decimal());

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
