import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyTechStack extends StatelessWidget {
  const MainScreenBodyTechStack({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Tech Stack',
          style: MyoroTypographyTheme.instance.boldLarge,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 410,
            ),
            child: const Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                _Image(ImagesStore.dart),
                _Image(ImagesStore.flutter),
                _Image(ImagesStore.javascript),
                _Image(ImagesStore.typescript),
                _Image(ImagesStore.node),
                _Image(ImagesStore.react),
                _Image(ImagesStore.electron),
                _Image(ImagesStore.php),
                _Image(ImagesStore.laravel),
                _Image(ImagesStore.sqlite),
                _Image(ImagesStore.postgres),
                _Image(ImagesStore.docker),
              ],
            ),
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
