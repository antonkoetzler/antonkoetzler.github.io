import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      const BaseWidgetTester(
        child: MainScreen(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MainScreen), findsOneWidget);
    expect(
      find.byWidgetPredicate((Widget w) {
        return w is MyoroScreen && w.appBar is MainScreenAppBar && w.body is MainScreenBody;
      }),
      findsOneWidget,
    );
  });
}
