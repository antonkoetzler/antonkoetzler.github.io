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
          // _Button(
          //   text: 'Résumé',
          //   onPressed: () => throw UnimplementedError(),
          // ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          Text(
            'Anton Louis Koetzler-Faust',
            style: MyoroTypographyTheme.instance.boldLarge,
          ),
          Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),

          // _Button(
          //   text: 'GitHub',
          //   onPressed: () => throw UnimplementedError(),
          // ),
        ],
      ),
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
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: const MyoroHoverButtonConfiguration(bordered: true),
        text: text,
        onPressed: onPressed,
      ),
    );
  }
}
