import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodySection extends StatelessWidget {
  final String? title;
  final Widget child;

  const MainScreenBodySection({
    super.key,
    this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        if (title != null)
          Text(
            title!,
            style: MyoroTypographyTheme.instance.boldLarge.copyWith(
              fontSize: 28,
            ),
          ),
        Flexible(
          child: ConstrainedBox(
            constraints: MainScreenBody.constraints,
            child: child,
          ),
        ),
      ],
    );
  }
}
