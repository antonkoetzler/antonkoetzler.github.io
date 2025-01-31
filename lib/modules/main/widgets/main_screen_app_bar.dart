import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);

  @override
  Widget build(BuildContext context) {
    return MyoroAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Button(
            text: 'Résumé',
            onPressed: () => myoroLaunchUrl(context.localizations.resumeLink),
          ),
          const Expanded(child: _Title()),
          _Button(
            text: 'GitHub',
            onPressed: () => myoroLaunchUrl('https://github.com/antonkoetzler'),
          ),
        ],
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return MyoroLayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        late final String text;

        if (maxWidth >= 420) {
          text = 'Anton Louis Koetzler-Faust';
        } else if (maxWidth >= 360) {
          text = 'Anton Koetzler-Faust';
        } else if (maxWidth >= 300) {
          text = 'Anton K-F';
        } else if (maxWidth >= 190) {
          text = 'AKF';
        } else {
          text = '';
        }

        return SelectableText(
          text,
          textAlign: TextAlign.center,
          style: context.resolveThemeExtension<MainScreenAppBarThemeExtension>().titleTextStyle,
        );
      },
    );
  }
}

final class _Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _Button({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenAppBarThemeExtension>();

    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: themeExtension.buttonConfiguration,
        text: text,
        textStyle: themeExtension.buttonTextStyle,
        onPressed: onPressed,
      ),
    );
  }
}
