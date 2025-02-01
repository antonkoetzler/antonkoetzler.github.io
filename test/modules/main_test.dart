import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('App', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    expect(find.byType(App), findsOneWidget);
    expect(
      find.byWidgetPredicate((Widget w) {
        return w is MyoroMaterialApp && w.title == 'Anton Louis Koetzler-Faust' && w.home is MainScreen;
      }),
      findsOneWidget,
    );
  });
}
