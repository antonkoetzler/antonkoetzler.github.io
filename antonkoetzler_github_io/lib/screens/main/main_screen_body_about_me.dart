import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyAboutMe extends StatelessWidget {
  const MainScreenBodyAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Title(),
        _Facts(),
      ],
    );
  }
}

final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      context.localizations.aboutMeTitle,
      style: MyoroTypographyTheme.instance.boldLarge,
    );
  }
}

final class _Facts extends StatelessWidget {
  const _Facts();

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;
    final stringBuffer = StringBuffer()
      ..writeln(localizations.aboutMeFact1)
      ..writeln(localizations.aboutMeFact2)
      ..writeln(localizations.aboutMeFact3)
      ..writeln(localizations.aboutMeFact4)
      ..writeln(localizations.aboutMeFact5);

    return Text(
      stringBuffer.toString(),
      style: MyoroTypographyTheme.instance.regularMedium,
    );
  }
}
