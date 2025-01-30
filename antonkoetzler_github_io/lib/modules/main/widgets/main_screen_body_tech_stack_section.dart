import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyTechStackSection extends StatelessWidget {
  const MainScreenBodyTechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return MainScreenBodySection(
      title: 'Tech Stack',
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 410,
        ),
        child: const Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
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
