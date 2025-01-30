import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyDevStackSection extends StatelessWidget {
  const MainScreenBodyDevStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    final spacing = context.resolveThemeExtension<MainScreenBodyDevStackSectionThemeExtension>().spacing;

    return MainScreenBodySection(
      title: 'Dev Stack',
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: const [
          MainScreenBodyIcon(path: ImagesStore.arch),
          MainScreenBodyIcon(path: ImagesStore.hyprland),
          MainScreenBodyIcon(path: ImagesStore.neovim),
          MainScreenBodyIcon(path: ImagesStore.kitty),
        ],
      ),
    );
  }
}
