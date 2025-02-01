import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSectionThemeExtension extends ThemeExtension<MainScreenBodyMeSectionThemeExtension> {
  /// [BoxConstraints] of image.
  final BoxConstraints constraints;

  /// [Border] of image.
  final Border border;

  /// [BorderRadius] of image.
  final BorderRadius borderRadius;

  const MainScreenBodyMeSectionThemeExtension({
    required this.constraints,
    required this.border,
    required this.borderRadius,
  });

  factory MainScreenBodyMeSectionThemeExtension.fake() {
    final maxWidth = faker.randomGenerator.decimal();
    final maxHeight = faker.randomGenerator.decimal();

    return MainScreenBodyMeSectionThemeExtension(
      constraints: BoxConstraints(
        minWidth: faker.randomGenerator.decimal(scale: maxWidth),
        maxWidth: maxWidth,
        minHeight: faker.randomGenerator.decimal(scale: maxWidth),
        maxHeight: maxHeight,
      ),
      border: Border.all(
        width: faker.randomGenerator.decimal(scale: 10),
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      ),
      borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
    );
  }

  @override
  MainScreenBodyMeSectionThemeExtension copyWith({
    BoxConstraints? constraints,
    Border? border,
    BorderRadius? borderRadius,
  }) {
    return MainScreenBodyMeSectionThemeExtension(
      constraints: constraints ?? this.constraints,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  MainScreenBodyMeSectionThemeExtension lerp(covariant ThemeExtension<MainScreenBodyMeSectionThemeExtension>? other, double t) {
    if (other is! MainScreenBodyMeSectionThemeExtension) return this;
    return copyWith(
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
    );
  }
}
