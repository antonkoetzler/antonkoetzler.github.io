import 'package:flutter/material.dart';

final class MyoroMainBodyAboutMe extends StatelessWidget {
  const MyoroMainBodyAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return const Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: [],
    );
  }
}

final class _Image extends StatelessWidget {
  final String _imagePath;

  const _Image(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _imagePath,
      width: 50,
    );
  }
}
