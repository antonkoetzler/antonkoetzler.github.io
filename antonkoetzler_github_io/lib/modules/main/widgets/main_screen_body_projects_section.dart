import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyProjectsSection extends StatelessWidget {
  const MainScreenBodyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodySection(
      title: localizations.projectsTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Project(
            name: 'MyoroFlutterLibrary (MFL)',
            facts: [
              localizations.projectsMyoroFlutterLibraryFact1,
              localizations.projectsMyoroFlutterLibraryFact2,
              localizations.projectsMyoroFlutterLibraryFact3,
              localizations.projectsMyoroFlutterLibraryFact4,
            ],
          ),
        ],
      ),
    );
  }
}

final class _Project extends StatelessWidget {
  final String name;
  final List<String> facts;

  const _Project({required this.name, required this.facts});

  @override
  Widget build(BuildContext context) {
    final stringBuffer = StringBuffer();
    for (final fact in facts) {
      final isLastFact = facts.indexOf(fact) == facts.length - 1;
      final formattedFact = '- $fact${isLastFact ? '.' : ';'}';
      isLastFact ? stringBuffer.write(formattedFact) : stringBuffer.writeln(formattedFact);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: MyoroTypographyTheme.instance.boldMedium,
        ),
        BulletList(facts),
      ],
    );
  }
}
