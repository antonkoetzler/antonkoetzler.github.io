import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSection extends StatelessWidget {
  const MainScreenBodyMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenBodyMeSectionThemeExtension>();
    final clipRadius = Radius.circular(themeExtension.borderRadius.topLeft.x - 4);

    return MainScreenBodySection(
      child: Container(
        constraints: themeExtension.constraints,
        decoration: BoxDecoration(
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        child: ClipRRect(
          borderRadius: themeExtension.borderRadius.copyWith(
            topLeft: clipRadius,
            topRight: clipRadius,
            bottomLeft: clipRadius,
            bottomRight: clipRadius,
          ),
          child: Image.asset(
            ImagesStore.me,
          ),
        ),
      ),
    );
  }
}
