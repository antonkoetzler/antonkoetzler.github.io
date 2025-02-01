import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyProfessionalExperienceSection', (WidgetTester tester) async {
    late final MainScreenBodyProfessionalExperienceSectionThemeExtension themeExtension;
    late final AppLocalizations localizations;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyProfessionalExperienceSectionThemeExtension>();
            localizations = context.localizations;
            return const MainScreenBodyProfessionalExperienceSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    void expectJobTitle(String company, String jobTitle, String dates) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Column &&
              w.mainAxisSize == MainAxisSize.min &&
              w.children.length == 3 &&
              w.children.first is SelectableText &&
              (w.children.first as SelectableText).data == company &&
              (w.children.first as SelectableText).style == themeExtension.companyTextStyle &&
              w.children.first is SelectableText &&
              (w.children.first as SelectableText).data == jobTitle &&
              (w.children.first as SelectableText).style == themeExtension.jobTitleTextStyle &&
              w.children.first is SelectableText &&
              (w.children.first as SelectableText).data == dates &&
              (w.children.first as SelectableText).style == themeExtension.datesTextStyle,
        ),
        findsOneWidget,
      );
    }

    expect(find.byType(MainScreenBodyProfessionalExperienceSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.title == localizations.professionalExperienceTitle &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 1,
      ),
      findsOneWidget,
    );
    expectJobTitle(
      'Doutor-IE',
      localizations.professionalExperienceDoutorIeJobTitle,
      localizations.professionalExperienceDoutorIeDates,
    );
  });
}
