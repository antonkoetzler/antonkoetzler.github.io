import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MainScreenBodyProfessionalExperienceSectionThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MainScreenBodyProfessionalExperienceSectionThemeExtension.fake();
    themeExtension2 = MainScreenBodyProfessionalExperienceSectionThemeExtension.fake();
  });

  test('MainScreenBodyProfessionalExperienceSectionThemeExtension.copyWith', () {
    MainScreenBodyProfessionalExperienceSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.companyTextStyle, themeExtension1.companyTextStyle);
    expect(copiedThemeExtension.jobTitleTextStyle, themeExtension1.jobTitleTextStyle);
    expect(copiedThemeExtension.datesTextStyle, themeExtension1.datesTextStyle);
    copiedThemeExtension = themeExtension1.copyWith(
      companyTextStyle: themeExtension2.companyTextStyle,
      jobTitleTextStyle: themeExtension2.jobTitleTextStyle,
      datesTextStyle: themeExtension2.datesTextStyle,
    );
    expect(copiedThemeExtension.companyTextStyle, themeExtension2.companyTextStyle);
    expect(copiedThemeExtension.jobTitleTextStyle, themeExtension2.jobTitleTextStyle);
    expect(copiedThemeExtension.datesTextStyle, themeExtension2.datesTextStyle);
  });

  test('MainScreenBodyProfessionalExperienceSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.companyTextStyle,
        TextStyle.lerp(themeExtension1.companyTextStyle, themeExtension2.companyTextStyle, i),
      );
      expect(
        lerpedThemeExtension.jobTitleTextStyle,
        TextStyle.lerp(themeExtension1.jobTitleTextStyle, themeExtension2.jobTitleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.datesTextStyle,
        TextStyle.lerp(themeExtension1.datesTextStyle, themeExtension2.datesTextStyle, i),
      );
    }
  });
}
