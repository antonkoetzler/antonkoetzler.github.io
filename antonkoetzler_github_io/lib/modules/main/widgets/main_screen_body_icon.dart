import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final class MainScreenBodyIcon extends StatelessWidget {
  final String path;

  const MainScreenBodyIcon({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    const size = 60.0;

    return SizedBox(
      width: size,
      height: size,
      child: path.endsWith('svg') ? SvgPicture.asset(path) : Image.asset(path),
    );
  }
}
