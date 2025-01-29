import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    const espacamento = SizedBox(height: 30);

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const Center(
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
        ),
      ),
    );
  }
}

final class _Me extends StatelessWidget {
  const _Me();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double size = screenWidth >= 400 ? 400 : screenWidth;
    final BorderRadius borderRadius = MyoroDecorationHelper.borderRadius;

    return Container(
      decoration: BoxDecoration(
        border: MyoroDecorationHelper.border(context),
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          ImagesStore.me,
          width: size,
          height: size,
          fit: BoxFit.contain,
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
      ..writeln('- ${localizations.aboutMeFact5}.');

    return MyoroCard(
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

    return MyoroCard(
      title: 'Tech Stack',
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 410,
        ),
        child: const Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            _Image(ImagesStore.dart),
            _Image(ImagesStore.flutter),
            _Image(ImagesStore.javascript),
            _Image(ImagesStore.typescript),
            _Image(ImagesStore.node),
            _Image(ImagesStore.react),
            _Image(ImagesStore.electron),
            _Image(ImagesStore.php),
            _Image(ImagesStore.laravel),
            _Image(ImagesStore.sqlite),
            _Image(ImagesStore.postgres),
            _Image(ImagesStore.docker),
          ],
        ),
      ),
    );
  }
}

final class _DevStack extends StatelessWidget {
  const _DevStack();

  @override
  Widget build(BuildContext context) {
    const spacing = 10.0;

    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Dev Stack',
          style: MyoroTypographyTheme.instance.boldLarge,
        ),
        const Flexible(
          child: Wrap(
            spacing: spacing,
            runSpacing: spacing,
            children: [
              _Image(ImagesStore.arch),
              _Image(ImagesStore.hyprland),
              _Image(ImagesStore.neovim),
              _Image(ImagesStore.kitty),
            ],
          ),
        ),
      ],
    );
  }
}

final class _ProfessionalExperience extends StatelessWidget {
  const _ProfessionalExperience();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MyoroCard(
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
    final textStyle = MyoroTypographyTheme.instance.regularMedium;

    return MyoroCard(
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

    return MyoroCard(
      title: localizations.projectsTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Project(
            name: 'MyoroFlutterLibrary (MFL)',
            facts: [],
          ),
        ],
      ),
    );
  }
}

final class _Image extends StatelessWidget {
  final String _path;

  const _Image(this._path);

  @override
  Widget build(BuildContext context) {
    const size = 60.0;

    return SizedBox(
      width: size,
      height: size,
      child: _path.endsWith('svg') ? SvgPicture.asset(_path) : Image.asset(_path),
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
  const _Project();

  @override
  Widget build(BuildContext context) {}
}
