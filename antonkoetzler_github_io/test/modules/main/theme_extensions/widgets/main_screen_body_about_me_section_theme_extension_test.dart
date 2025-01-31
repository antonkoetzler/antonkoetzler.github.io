import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MainScreenBodyAboutMeSectionThemeExtension.copyWith', () {
    const MainScreenBodyAboutMeSectionThemeExtension().copyWith();
  });

  test('MainScreenBodyAboutMeSectionThemeExtension.lerp', () {
    const MainScreenBodyAboutMeSectionThemeExtension().lerp(
      const MainScreenBodyAboutMeSectionThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
