import 'package:flutter/material.dart';

final class MainScreenBodyProfessionalExperienceSectionThemeExtension extends ThemeExtension<MainScreenBodyProfessionalExperienceSectionThemeExtension> {
  final TextStyle companyTextStyle;
  final TextStyle jobTitleTextStyle;
  final TextStyle datesTextStyle;

  const MainScreenBodyProfessionalExperienceSectionThemeExtension({
    required this.companyTextStyle,
    required this.jobTitleTextStyle,
    required this.datesTextStyle,
  });

  @override
  MainScreenBodyProfessionalExperienceSectionThemeExtension copyWith({
    TextStyle? companyTextStyle,
    TextStyle? jobTitleTextStyle,
    TextStyle? datesTextStyle,
  }) {
    return MainScreenBodyProfessionalExperienceSectionThemeExtension(
      companyTextStyle: companyTextStyle ?? this.companyTextStyle,
      jobTitleTextStyle: jobTitleTextStyle ?? this.jobTitleTextStyle,
      datesTextStyle: datesTextStyle ?? this.datesTextStyle,
    );
  }

  @override
  MainScreenBodyProfessionalExperienceSectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyProfessionalExperienceSectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyProfessionalExperienceSectionThemeExtension) return this;
    return copyWith(
      companyTextStyle: TextStyle.lerp(companyTextStyle, other.companyTextStyle, t),
      jobTitleTextStyle: TextStyle.lerp(jobTitleTextStyle, other.jobTitleTextStyle, t),
      datesTextStyle: TextStyle.lerp(datesTextStyle, other.datesTextStyle, t),
    );
  }
}
