import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyMe extends StatelessWidget {
  const MainScreenBodyMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: Image.asset(
        ImagesStore.me,
      ),
    );
  }
}
