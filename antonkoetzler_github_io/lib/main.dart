import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() => runApp(const App());

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MyoroMaterialApp(
      title: 'Anton Louis Koetzler-Faust',
      home: BlocProvider(
        create: (_) => LanguageCubit()..getLanguage(),
        child: const MyoroScreen(
          appBar: _AppBar(),
          body: _Body(),
        ),
      ),
    );
  }
}

final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return MyoroAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Button(
            text: 'Résumé',
            onPressed: () => throw UnimplementedError(),
          ),
          const Expanded(child: _Title()),
          _Button(
            text: 'GitHub',
            onPressed: () => throw UnimplementedError(),
          ),
        ],
      ),
    );
  }
}

final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return MyoroLayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        late final String text;

        if (maxWidth >= 280) {
          text = 'Anton Louis Koetzler-Faust';
        } else if (maxWidth >= 220) {
          text = 'Anton Koetzler-Faust';
        } else if (maxWidth >= 140) {
          text = 'Anton K-F';
        } else if (maxWidth >= 50) {
          text = 'AKF';
        } else {
          text = '';
        }

        return Text(
          text,
          textAlign: TextAlign.center,
          style: MyoroTypographyTheme.instance.boldLarge,
        );
      },
    );
  }
}

final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Text('World');
  }
}

final class _Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _Button({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: MyoroHoverButtonConfiguration(
          primaryColor: themeExtension.onPrimaryColor,
          onPrimaryColor: themeExtension.primaryColor,
        ),
        text: text,
        onPressed: onPressed,
      ),
    );
  }
}
