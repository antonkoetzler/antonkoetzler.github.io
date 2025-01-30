import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyProfessionalExperienceSection extends StatelessWidget {
  const MainScreenBodyProfessionalExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodySection(
      title: context.localizations.professionalExperienceTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _JobTitle(
            company: 'Doutor-IE',
            jobTitle: localizations.professionalExperienceDoutorIeJobTitle,
            dates: localizations.professionalExperienceDoutorIeDates,
          ),
        ],
      ),
    );
  }
}

final class _JobTitle extends StatelessWidget {
  final String company;
  final String jobTitle;
  final String dates;

  const _JobTitle({
    required this.company,
    required this.jobTitle,
    required this.dates,
  });

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          company,
          style: typographyInstance.boldMedium,
        ),
        Text(
          jobTitle,
          style: typographyInstance.italicMedium,
        ),
        Text(
          dates,
          style: typographyInstance.regularMedium,
        ),
      ],
    );
  }
}
