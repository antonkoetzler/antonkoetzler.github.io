import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSectionThemeExtension extends ThemeExtension<MainScreenBodyMeSectionThemeExtension> {
  /// [BoxConstraints] of [Container].
  final BoxConstraints constraints;

  /// [BoxDecoration] of [Container].
  final BoxDecoration decoration;

  const MainScreenBodyMeSectionThemeExtension({
    required this.constraints,
    required this.decoration,
  });

  MainScreenBodyMeSectionThemeExtension.fake()
      : border = Border.all(
          width: faker.randomGenerator.decimal(scale: 10),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
        borderRadius = BorderRadius.circular(faker.randomGenerator.decimal());

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
