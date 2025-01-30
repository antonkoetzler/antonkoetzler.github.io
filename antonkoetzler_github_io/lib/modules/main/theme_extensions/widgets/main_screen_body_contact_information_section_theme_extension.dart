import 'package:flutter/material.dart';

final class MainScreenBodyContactInformationSectionThemeExtension extends ThemeExtension<MainScreenBodyContactInformationSectionThemeExtension> {
  /// [TextStyle] of the form of communication in [_FormOfContact].
  final TextStyle formOfCommunicationTextStyle;

  /// [TextStyle] of the contact information in [_FormOfContact].
  final TextStyle contactInformationTextStyle;

  const MainScreenBodyContactInformationSectionThemeExtension({
    required this.formOfCommunicationTextStyle,
    required this.contactInformationTextStyle,
  });

  @override
  MainScreenBodyContactInformationSectionThemeExtension copyWith({
    TextStyle? formOfCommunicationTextStyle,
    TextStyle? contactInformationTextStyle,
  }) {
    return MainScreenBodyContactInformationSectionThemeExtension(
      formOfCommunicationTextStyle: formOfCommunicationTextStyle ?? this.formOfCommunicationTextStyle,
      contactInformationTextStyle: contactInformationTextStyle ?? this.contactInformationTextStyle,
    );
  }

  @override
  MainScreenBodyContactInformationSectionThemeExtension lerp(
    covariant ThemeExtension<MainScreenBodyContactInformationSectionThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenBodyContactInformationSectionThemeExtension) return this;
    return copyWith(
      formOfCommunicationTextStyle: TextStyle.lerp(formOfCommunicationTextStyle, other.formOfCommunicationTextStyle, t),
      contactInformationTextStyle: TextStyle.lerp(contactInformationTextStyle, other.contactInformationTextStyle, t),
    );
  }
}
