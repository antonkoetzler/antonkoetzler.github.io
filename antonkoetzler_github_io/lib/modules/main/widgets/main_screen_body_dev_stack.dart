import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyDevStack extends StatelessWidget {
  const MainScreenBodyDevStack({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return const MainScreenBodySection(
      title: 'Dev Stack',
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [
          MainScreenBodyIcon(path: ImagesStore.arch),
          MainScreenBodyIcon(path: ImagesStore.hyprland),
          MainScreenBodyIcon(path: ImagesStore.neovim),
          MainScreenBodyIcon(path: ImagesStore.kitty),
        ],
      ),
    );
  }
}
