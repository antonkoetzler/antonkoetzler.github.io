import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyCard extends StatelessWidget {
  final EdgeInsets? padding;
  final String? title;
  final Widget child;

  const MainScreenBodyCard({
    super.key,
    this.padding,
    this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MyoroCard(
      constraints: const BoxConstraints(maxWidth: 534),
      padding: padding,
      title: title,
      titleTextStyle: MyoroTypographyTheme.instance.boldLarge.copyWith(
        fontSize: 28,
      ),
      child: child,
    );
  }
}
