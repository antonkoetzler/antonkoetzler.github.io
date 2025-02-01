import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MainScreenBodyContactInformationSectionThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    themeExtension1 = MainScreenBodyContactInformationSectionThemeExtension.fake();
    themeExtension2 = MainScreenBodyContactInformationSectionThemeExtension.fake();
  });

  test('MainScreenBodyContactInformationSectionThemeExtension.copyWith', () {
    MainScreenBodyContactInformationSectionThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension.formOfCommunicationTextStyle, themeExtension1.formOfCommunicationTextStyle);
    expect(copiedThemeExtension.contactInformationTextStyle, themeExtension1.contactInformationTextStyle);
    copiedThemeExtension = themeExtension1.copyWith(
      formOfCommunicationTextStyle: themeExtension2.formOfCommunicationTextStyle,
      contactInformationTextStyle: themeExtension2.contactInformationTextStyle,
    );
    expect(copiedThemeExtension.formOfCommunicationTextStyle, themeExtension2.formOfCommunicationTextStyle);
    expect(copiedThemeExtension.contactInformationTextStyle, themeExtension2.contactInformationTextStyle);
  });

  test('MainScreenBodyContactInformationSectionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.formOfCommunicationTextStyle,
        TextStyle.lerp(
          themeExtension1.formOfCommunicationTextStyle,
          themeExtension2.formOfCommunicationTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.contactInformationTextStyle,
        TextStyle.lerp(
          themeExtension1.contactInformationTextStyle,
          themeExtension2.contactInformationTextStyle,
          i,
        ),
      );
    }
  });
}
