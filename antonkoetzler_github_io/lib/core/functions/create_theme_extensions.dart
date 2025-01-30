import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

List<ThemeExtension> createThemeExtensions(ColorScheme colorScheme, TextTheme textTheme) {
  return [
    BulletListThemeExtension(
      textStyle: textTheme.bodyMedium!.copyWith(height: 175),
    ),
  ];
}
