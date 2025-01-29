import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyDevStack extends StatelessWidget {
  const MainScreenBodyDevStack({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Dev Stack',
          style: MyoroTypographyTheme.instance.boldLarge,
        ),
        const Flexible(
          child: Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              _Image(ImagesStore.arch),
              _Image(ImagesStore.hyprland),
              _Image(ImagesStore.neovim),
              _Image(ImagesStore.kitty),
            ],
          ),
        ),
      ],
    );
  }
}

final class _Image extends StatelessWidget {
  final String _path;

  const _Image(this._path);

  @override
  Widget build(BuildContext context) {
    const size = 60.0;

    return SizedBox(
      width: size,
      height: size,
      child: _path.endsWith('svg') ? SvgPicture.asset(_path) : Image.asset(_path),
    );
  }
}

