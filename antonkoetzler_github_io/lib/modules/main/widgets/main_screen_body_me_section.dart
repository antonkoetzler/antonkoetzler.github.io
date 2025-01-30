import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSection extends StatelessWidget {
  const MainScreenBodyMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenBodyMeSectionThemeExtension>();
    final clipRRectRadius = Radius.circular(themeExtension.borderRadius.topLeft.x - 4);

    return MainScreenBodySection(
      child: Container(
        decoration: BoxDecoration(
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        child: ClipRRect(
          borderRadius: themeExtension.borderRadius.copyWith(
            topLeft: clipRRectRadius,
            topRight: clipRRectRadius,
            bottomLeft: clipRRectRadius,
            bottomRight: clipRRectRadius,
          ),
          child: Image.asset(
            ImagesStore.me,
          ),
        ),
      ),
    );
  }
}
