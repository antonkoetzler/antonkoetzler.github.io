import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyContactInformationSectionThemeExtension extends ThemeExtension<MainScreenBodyContactInformationSectionThemeExtension> {
  /// [TextStyle] of the form of communication in [_FormOfContact].
  final TextStyle formOfCommunicationTextStyle;

  /// [TextStyle] of the contact information in [_FormOfContact].
  final TextStyle contactInformationTextStyle;

  const MainScreenBodyContactInformationSectionThemeExtension({
    required this.formOfCommunicationTextStyle,
    required this.contactInformationTextStyle,
  });

  MainScreenBodyContactInformationSectionThemeExtension.fake()
      : formOfCommunicationTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        contactInformationTextStyle = MyoroTypographyTheme.instance.randomTextStyle;

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
