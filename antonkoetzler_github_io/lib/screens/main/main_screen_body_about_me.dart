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
      children: [
        _Image(),
        _Text(),
      ],
    );
  }
}

final class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: MyoroDecorationHelper.border(context),
        borderRadius: MyoroDecorationHelper.borderRadius,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 300,
        ),
        child: ClipRRect(
          borderRadius: MyoroDecorationHelper.borderRadius,
          child: Image.asset(
            'assets/images/me.jpg',
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}

final class _Text extends StatelessWidget {
  const _Text();

  @override
  Widget build(BuildContext context) {
    final language = context.resolveBloc<LanguageCubit>().state;

    return const SizedBox.shrink();
  }
}
