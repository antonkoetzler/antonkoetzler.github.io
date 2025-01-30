import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    const espacamento = SizedBox(height: 30);

    return const SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _Me(),
            espacamento,
            _AboutMe(),
            espacamento,
            _TechStack(),
            espacamento,
            _DevStack(),
            espacamento,
            _ProfessionalExperience(),
            espacamento,
            _ContactInformation(),
            espacamento,
            _Projects(),
          ],
        ),
      ),
    );
  }
}

final class _Me extends StatelessWidget {
  const _Me();

  @override
  Widget build(BuildContext context) {
    return MainScreenBodyCard(
      padding: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: context.resolveThemeExtension<MyoroCardThemeExtension>().borderRadius,
        child: Image.asset(
          ImagesStore.me,
        ),
      ),
    );
  }
}

final class _AboutMe extends StatelessWidget {
  const _AboutMe();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;
    final stringBuffer = StringBuffer()
      ..writeln('- ${localizations.aboutMeFact1};')
      ..writeln('- ${localizations.aboutMeFact2};')
      ..writeln('- ${localizations.aboutMeFact3};')
      ..writeln('- ${localizations.aboutMeFact4};')
      ..write('- ${localizations.aboutMeFact5}.');

    return MainScreenBodyCard(
      title: context.localizations.aboutMeTitle,
      child: Text(
        stringBuffer.toString(),
        style: MyoroTypographyTheme.instance.regularMedium,
      ),
    );
  }
}

final class _TechStack extends StatelessWidget {
  const _TechStack();

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return const MainScreenBodyCard(
      title: 'Tech Stack',
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [
          MainScreenBodyIcon(path: ImagesStore.dart),
          MainScreenBodyIcon(path: ImagesStore.flutter),
          MainScreenBodyIcon(path: ImagesStore.javascript),
          MainScreenBodyIcon(path: ImagesStore.typescript),
          MainScreenBodyIcon(path: ImagesStore.node),
          MainScreenBodyIcon(path: ImagesStore.react),
          MainScreenBodyIcon(path: ImagesStore.electron),
          MainScreenBodyIcon(path: ImagesStore.php),
          MainScreenBodyIcon(path: ImagesStore.laravel),
          MainScreenBodyIcon(path: ImagesStore.sqlite),
          MainScreenBodyIcon(path: ImagesStore.postgres),
          MainScreenBodyIcon(path: ImagesStore.docker),
        ],
      ),
    );
  }
}

final class _DevStack extends StatelessWidget {
  const _DevStack();

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return const MainScreenBodyCard(
      title: 'Dev Stack',
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: [
          MainScreenBodyIcon(path: ImagesStore.arch),
          MainScreenBodyIcon(path: ImagesStore.hyprland),
          MainScreenBodyIcon(path: ImagesStore.neovim),
          MainScreenBodyIcon(path: ImagesStore.kitty),
        ],
      ),
    );
  }
}

final class _ProfessionalExperience extends StatelessWidget {
  const _ProfessionalExperience();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodyCard(
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

final class _ContactInformation extends StatelessWidget {
  const _ContactInformation();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodyCard(
      title: localizations.contactInformationTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _FormOfContact(
            'Email',
            'antonkoetzler-faust@hotmail.com',
          ),
          _FormOfContact(
            localizations.contactInformationPhoneNumberTitle,
            '+55 (48) 98818-9095',
          ),
        ],
      ),
    );
  }
}

final class _Projects extends StatelessWidget {
  const _Projects();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodyCard(
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

final class _FormOfContact extends StatelessWidget {
  final String _formOfCommunication;
  final String _contactInformation;

  const _FormOfContact(this._formOfCommunication, this._contactInformation);

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$_formOfCommunication:',
            style: typographyInstance.semiBoldMedium,
          ),
          TextSpan(
            text: _contactInformation,
            style: typographyInstance.regularMedium,
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
        Text(
          stringBuffer.toString(),
          style: MyoroTypographyTheme.instance.regularMedium,
        ),
      ],
    );
  }
}
