import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyTechStackSection', (WidgetTester tester) async {
    late final MainScreenBodyTechStackSectionThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyTechStackSectionThemeExtension>();
            return const MainScreenBodyTechStackSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MainScreenBodyTechStackSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.title == 'Tech Stack' &&
            w.child is ConstrainedBox &&
            (w.child as ConstrainedBox).constraints == themeExtension.constraints &&
            (w.child as ConstrainedBox).child is Wrap &&
            ((w.child as ConstrainedBox).child as Wrap).spacing == themeExtension.spacing &&
            ((w.child as ConstrainedBox).child as Wrap).runSpacing == themeExtension.spacing &&
            ((w.child as ConstrainedBox).child as Wrap).children.length == 12 &&
            ((w.child as ConstrainedBox).child as Wrap).children.first is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children.first as MainScreenBodyIcon).path == ImagesStore.dart &&
            ((w.child as ConstrainedBox).child as Wrap).children[1] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[1] as MainScreenBodyIcon).path == ImagesStore.flutter &&
            ((w.child as ConstrainedBox).child as Wrap).children[2] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[2] as MainScreenBodyIcon).path == ImagesStore.javascript &&
            ((w.child as ConstrainedBox).child as Wrap).children[3] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[3] as MainScreenBodyIcon).path == ImagesStore.typescript &&
            ((w.child as ConstrainedBox).child as Wrap).children[4] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[4] as MainScreenBodyIcon).path == ImagesStore.node &&
            ((w.child as ConstrainedBox).child as Wrap).children[5] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[5] as MainScreenBodyIcon).path == ImagesStore.react &&
            ((w.child as ConstrainedBox).child as Wrap).children[6] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[6] as MainScreenBodyIcon).path == ImagesStore.electron &&
            ((w.child as ConstrainedBox).child as Wrap).children[7] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[7] as MainScreenBodyIcon).path == ImagesStore.php &&
            ((w.child as ConstrainedBox).child as Wrap).children[8] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[8] as MainScreenBodyIcon).path == ImagesStore.laravel &&
            ((w.child as ConstrainedBox).child as Wrap).children[9] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[9] as MainScreenBodyIcon).path == ImagesStore.sqlite &&
            ((w.child as ConstrainedBox).child as Wrap).children[10] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[10] as MainScreenBodyIcon).path == ImagesStore.postgres &&
            ((w.child as ConstrainedBox).child as Wrap).children[11] is MainScreenBodyIcon &&
            (((w.child as ConstrainedBox).child as Wrap).children[11] as MainScreenBodyIcon).path == ImagesStore.docker,
      ),
      findsOneWidget,
    );
  });
}
