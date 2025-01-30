import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyTechStackSection extends StatelessWidget {
  const MainScreenBodyTechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenBodyTechStackSectionThemeExtension>();

    return MainScreenBodySection(
      title: 'Tech Stack',
      child: ConstrainedBox(
        constraints: themeExtension.constraints,
        child: Wrap(
          spacing: themeExtension.spacing,
          runSpacing: themeExtension.spacing,
          children: const [
            MainScreenBodyIcon(path: ImagesStore.dart),
            MainScreenBodyIcon(path: ImagesStore.flutter),
            MainScreenBodyIcon(path: ImagesStore.javascript),
            MainScreenBodyIcon(path: ImagesStore.typescript),
            MainScreenBodyIcon(path: ImagesStore.node),
            MainScreenBodyIcon(path: ImagesStore.react),
            MainScreenBodyIcon(path: ImagesStore.electron),
            MainScreenBodyIcon(path: ImagesStore.php),
            MainScreenBodyIcon(path: ImagesStore.laravel),
            MainScreenBodyIcon(path: ImagesStore.sqlite),
            MainScreenBodyIcon(path: ImagesStore.postgres),
            MainScreenBodyIcon(path: ImagesStore.docker),
          ],
        ),
      ),
    );
  }
}
