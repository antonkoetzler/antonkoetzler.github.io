import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyAboutMeSection', (WidgetTester tester) async {
    await tester.pumpWidget(const BaseWidgetTester(child: MainScreenBodyAboutMeSection()));
    await tester.pumpAndSettle();
    expect(find.byType(MainScreenBodyAboutMeSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MainScreenBodySection && w.title != null && w.child is BulletList,
      ),
      findsOneWidget,
    );
  });
}
