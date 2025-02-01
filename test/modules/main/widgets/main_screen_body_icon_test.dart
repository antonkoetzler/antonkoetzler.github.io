import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  Future<MainScreenBodyIconThemeExtension> pumpWidget(WidgetTester tester, String path) async {
    late final MainScreenBodyIconThemeExtension themeExtension;
    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyIconThemeExtension>();
            return MainScreenBodyIcon(path: path);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    return themeExtension;
  }

  void expectCalls(String path, MainScreenBodyIconThemeExtension themeExtension) {
    expect(find.byType(MainScreenBodyIcon), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SizedBox &&
            w.width == themeExtension.size &&
            w.height == themeExtension.size &&
            (path.toUpperCase().endsWith('svg') ? w.child is SvgPicture : w.child is Image),
      ),
      findsOneWidget,
    );
  }

  testWidgets('MainScreenBodyIcon with SVG', (WidgetTester tester) async {
    const path = ImagesStore.neovim;
    expectCalls(path, await pumpWidget(tester, path));
  });

  testWidgets('MainScreenBodyIcon with non-SVG', (WidgetTester tester) async {
    const path = ImagesStore.kitty;
    expectCalls(path, await pumpWidget(tester, path));
  });
}
