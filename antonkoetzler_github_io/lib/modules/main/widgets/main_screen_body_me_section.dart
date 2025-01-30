import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMeSection extends StatelessWidget {
  const MainScreenBodyMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = context.resolveThemeExtension<MyoroCardThemeExtension>().borderRadius;

    return MainScreenBodySection(
      child: Container(
        decoration: BoxDecoration(
          border: MyoroDecorationHelper.border(context),
          borderRadius: borderRadius,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Image.asset(
            ImagesStore.me,
          ),
        ),
      ),
    );
  }
}
