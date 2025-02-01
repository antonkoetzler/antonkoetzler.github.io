import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyIcon extends StatelessWidget {
  final String path;

  const MainScreenBodyIcon({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    final size = context.resolveThemeExtension<MainScreenBodyIconThemeExtension>().size;

    return SizedBox(
      width: size,
      height: size,
      child: path.toUpperCase().endsWith('svg') ? SvgPicture.asset(path) : Image.asset(path),
    );
  }
}
