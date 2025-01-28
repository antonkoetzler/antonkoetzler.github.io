import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBody extends StatelessWidget {
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyoroScrollable(
      scrollableType: MyoroScrollableEnum.customScrollView,
      constraints: BoxConstraints(maxWidth: 500),
      children: [
        MainScreenBodyAboutMe(),
        // _TechStack(),
        // _DevStack(),
        // _ProfessionalExperience(),
        // _ContactInformation(),
        // _Projects(),
      ],
    );
  }
}
