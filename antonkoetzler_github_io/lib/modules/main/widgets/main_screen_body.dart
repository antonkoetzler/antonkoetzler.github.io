import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBody extends StatelessWidget {
  static const constraints = BoxConstraints(maxWidth: 534);

  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final divider = ConstrainedBox(
      constraints: constraints,
      child: const MyoroBasicDivider(
        configuration: MyoroBasicDividerConfiguration(
          direction: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          shortValue: 1,
        ),
      ),
    );

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 30,
          children: [
            const MainScreenBodyMeSection(),
            divider,
            const MainScreenBodyAboutMeSection(),
            divider,
            const MainScreenBodyTechStackSection(),
            divider,
            const MainScreenBodyDevStack(),
            divider,
            const MainScreenBodyProfessionalExperienceSection(),
            divider,
            const MainScreenBodyContactInformationSection(),
            divider,
            const MainScreenBodyProjectsSection(),
          ],
        ),
      ),
    );
  }
}
