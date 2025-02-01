import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenAppBar', (WidgetTester tester) async {
    late final MainScreenAppBarThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(builder: (context) {
          themeExtension = context.resolveThemeExtension<MainScreenAppBarThemeExtension>();
          return const MainScreenAppBar();
        }),
      ),
    );
    await tester.pumpAndSettle();

    void expectButton(String text) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is IntrinsicWidth &&
              w.child is MyoroIconTextHoverButton &&
              (w.child as MyoroIconTextHoverButton).configuration == themeExtension.buttonConfiguration &&
              (w.child as MyoroIconTextHoverButton).text == text &&
              (w.child as MyoroIconTextHoverButton).textStyle == themeExtension.buttonTextStyle &&
              (w.child as MyoroIconTextHoverButton).onPressed != null,
        ),
        findsOneWidget,
      );
    }

    expect(find.byType(MainScreenAppBar), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroAppBar &&
            w.child is Row &&
            (w.child as Row).mainAxisAlignment == MainAxisAlignment.spaceBetween &&
            (w.child as Row).children.length == 3 &&
            (w.child as Row).children[1] is Expanded,
      ),
      findsOneWidget,
    );
    expectButton('Résumé');
    expectButton('GitHub');
    expect(find.byType(MyoroLayoutBuilder), findsOneWidget);
    expect(
      find.byWidgetPredicate((Widget w) {
        return w is SelectableText && w.textAlign == TextAlign.center && w.style == themeExtension.titleTextStyle;
      }),
      findsOneWidget,
    );
  });
}
