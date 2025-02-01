import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyDevStackSection', (WidgetTester tester) async {
    late final MainScreenBodyDevStackSectionThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyDevStackSectionThemeExtension>();
            return const MainScreenBodyDevStackSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MainScreenBodyDevStackSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.title == 'Dev Stack' &&
            w.child is Wrap &&
            (w.child as Wrap).spacing == themeExtension.spacing &&
            (w.child as Wrap).runSpacing == themeExtension.spacing &&
            (w.child as Wrap).children.length == 4 &&
            (w.child as Wrap).children.first is MainScreenBodyIcon &&
            ((w.child as Wrap).children.first as MainScreenBodyIcon).path == ImagesStore.arch &&
            (w.child as Wrap).children[1] is MainScreenBodyIcon &&
            ((w.child as Wrap).children[1] as MainScreenBodyIcon).path == ImagesStore.hyprland &&
            (w.child as Wrap).children[2] is MainScreenBodyIcon &&
            ((w.child as Wrap).children[2] as MainScreenBodyIcon).path == ImagesStore.neovim &&
            (w.child as Wrap).children.last is MainScreenBodyIcon &&
            ((w.child as Wrap).children.last as MainScreenBodyIcon).path == ImagesStore.kitty,
      ),
      findsOneWidget,
    );
  });
}
