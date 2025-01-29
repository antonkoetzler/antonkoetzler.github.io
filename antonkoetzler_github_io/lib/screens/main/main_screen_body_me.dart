import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyMe extends StatelessWidget {
  const MainScreenBodyMe({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double size = screenWidth >= 400 ? 400 : screenWidth;
    final BorderRadius borderRadius = MyoroDecorationHelper.borderRadius;

    return Container(
      decoration: BoxDecoration(
        border: MyoroDecorationHelper.border(context),
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          ImagesStore.me,
          width: size,
          height: size,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
