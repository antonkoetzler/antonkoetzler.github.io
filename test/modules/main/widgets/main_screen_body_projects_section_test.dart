import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyProjectsSection', (WidgetTester tester) async {
    late final MainScreenBodyProjectsSectionThemeExtension themeExtension;
    late final AppLocalizations localizations;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyProjectsSectionThemeExtension>();
            localizations = context.localizations;
            return const MainScreenBodyProjectsSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    void expectProject(String projectName, List<String> projectFacts) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Column &&
              w.mainAxisSize == MainAxisSize.min &&
              w.crossAxisAlignment == CrossAxisAlignment.start &&
              w.children.length == 2 &&
              w.children.first is SelectableText &&
              (w.children.first as SelectableText).data == projectName &&
              (w.children.first as SelectableText).style == themeExtension.projectTextStyle &&
              w.children.last is BulletList &&
              (w.children.last as BulletList).items == projectFacts,
        ),
        findsOneWidget,
      );
    }

    expect(find.byType(MainScreenBodyProjectsSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.title == localizations.projectsTitle &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 1,
      ),
      findsOneWidget,
    );
    expectProject('MyoroFlutterLibrary (MFL)', [
      localizations.projectsMyoroFlutterLibraryFact1,
      localizations.projectsMyoroFlutterLibraryFact2,
      localizations.projectsMyoroFlutterLibraryFact3,
      localizations.projectsMyoroFlutterLibraryFact4,
    ]);
  });
}
