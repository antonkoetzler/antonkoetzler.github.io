import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MainScreenThemeExtension.copyWith', () {
    const MainScreenThemeExtension().copyWith();
  });

  test('MainScreenThemeExtension.copyWith', () {
    const MainScreenThemeExtension().lerp(
      const MainScreenThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
