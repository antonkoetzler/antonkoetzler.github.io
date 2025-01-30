import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return MyoroAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Button(
            text: 'Résumé',
            onPressed: () => throw UnimplementedError(),
          ),
          const Expanded(child: _Title()),
          _Button(
            text: 'GitHub',
            onPressed: () => throw UnimplementedError(),
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

        return Text(
          text,
          textAlign: TextAlign.center,
          style: MyoroTypographyTheme.instance.boldLarge.copyWith(
            fontSize: 32,
          ),
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
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: const MyoroHoverButtonConfiguration(
          isHovered: true,
        ),
        text: text,
        textStyle: MyoroTypographyTheme.instance.regularLarge.copyWith(height: 1),
        onPressed: onPressed,
      ),
    );
  }
}
