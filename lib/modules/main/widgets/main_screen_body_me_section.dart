import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSection extends StatelessWidget {
  const MainScreenBodyMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenBodyMeSectionThemeExtension>();

    return MainScreenBodySection(
      child: Container(
        constraints: themeExtension.constraints,
        decoration: themeExtension.decoration,
        child: Image.asset(
          ImagesStore.me,
        ),
      ),
    );
  }
}
