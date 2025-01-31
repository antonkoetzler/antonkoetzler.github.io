import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenBodyThemeExtension>();

    final divider = ConstrainedBox(
      constraints: themeExtension.constraints,
      child: MyoroBasicDivider(configuration: themeExtension.dividerConfiguration),
    );

    return SizedBox(
      width: double.infinity,
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          padding: themeExtension.padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: themeExtension.spacing,
            children: [
              const MainScreenBodyMeSection(),
              divider,
              const MainScreenBodyAboutMeSection(),
              divider,
              const MainScreenBodyTechStackSection(),
              divider,
              const MainScreenBodyDevStackSection(),
              divider,
              const MainScreenBodyProfessionalExperienceSection(),
              divider,
              const MainScreenBodyContactInformationSection(),
              divider,
              const MainScreenBodyProjectsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
