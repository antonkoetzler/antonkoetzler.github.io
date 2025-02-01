import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyMeSection', (WidgetTester tester) async {
    late final MainScreenBodyMeSectionThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyMeSectionThemeExtension>();
            return const MainScreenBodyMeSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MainScreenBodyMeSection), findsOneWidget);
    final clipRRectRadius = Radius.circular(themeExtension.borderRadius.topLeft.x - 4);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.child is Container &&
            (w.child as Container).decoration ==
                BoxDecoration(
                  border: themeExtension.border,
                  borderRadius: themeExtension.borderRadius,
                ) &&
            (w.child as Container).child is ClipRRect &&
            ((w.child as Container).child as ClipRRect).borderRadius ==
                themeExtension.borderRadius.copyWith(
                  topLeft: clipRRectRadius,
                  topRight: clipRRectRadius,
                  bottomLeft: clipRRectRadius,
                  bottomRight: clipRRectRadius,
                ) &&
            ((w.child as Container).child as ClipRRect).child is Image,
      ),
      findsOneWidget,
    );
  });
}
