import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodySection', (WidgetTester tester) async {
    final String title = faker.lorem.word();
    late final MainScreenBodySectionThemeExtension mainScreenBodySectionThemeExtension;
    late final MainScreenBodyThemeExtension mainScreenBodyThemeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            mainScreenBodySectionThemeExtension = context.resolveThemeExtension<MainScreenBodySectionThemeExtension>();
            mainScreenBodyThemeExtension = context.resolveThemeExtension<MainScreenBodyThemeExtension>();
            return MainScreenBodySection(
              title: title,
              child: const MyoroRadio(),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MainScreenBodySection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.spacing == mainScreenBodySectionThemeExtension.spacing &&
            w.children.length == 2 &&
            w.children.first is SelectableText &&
            (w.children.first as SelectableText).data == title &&
            (w.children.first as SelectableText).style == mainScreenBodySectionThemeExtension.titleTextStyle &&
            w.children.last is Flexible &&
            (w.children.last as Flexible).child is ConstrainedBox &&
            ((w.children.last as Flexible).child as ConstrainedBox).constraints == mainScreenBodyThemeExtension.constraints &&
            ((w.children.last as Flexible).child as ConstrainedBox).child is MyoroRadio,
      ),
      findsOneWidget,
    );
  });
}
