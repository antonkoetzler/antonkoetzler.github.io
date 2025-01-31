import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

final class MainScreenBodyAboutMeSection extends StatelessWidget {
  const MainScreenBodyAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodySection(
      title: context.localizations.aboutMeTitle,
      child: BulletList([
        localizations.aboutMeFact1,
        localizations.aboutMeFact2,
        localizations.aboutMeFact3,
        localizations.aboutMeFact4,
        localizations.aboutMeFact5,
      ]),
    );
  }
}
