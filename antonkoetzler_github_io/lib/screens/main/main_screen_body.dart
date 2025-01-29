import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';

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
                MainScreenBodyMe(),
                espacamento,
                MainScreenBodyAboutMe(),
                espacamento,
                MainScreenBodyTechStack(),
                espacamento,
                MainScreenBodyDevStack(),
                // espacamento,
                // _ProfessionalExperience(),
                // espacamento,
                // _ContactInformation(),
                // espacamento,
                // _Projects(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
