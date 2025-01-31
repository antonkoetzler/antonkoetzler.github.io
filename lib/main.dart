import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() => runApp(const App());

final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyoroMaterialApp(
      title: 'Anton Louis Koetzler-Faust',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      themeExtensionsBuilder: createThemeExtensions,
      home: MainScreen(),
    );
  }
}
