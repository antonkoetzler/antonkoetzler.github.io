import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBodyContactInformationSection', (WidgetTester tester) async {
    late final AppLocalizations localizations;
    late final MainScreenBodyContactInformationSectionThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            localizations = context.localizations;
            themeExtension = context.resolveThemeExtension<MainScreenBodyContactInformationSectionThemeExtension>();
            return const MainScreenBodyContactInformationSection();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    void expectFormOfContact(String formOfCommunication, String contactInformation) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is RichText &&
              w.text is TextSpan &&
              (w.text as TextSpan).children != null &&
              (w.text as TextSpan).children!.first is Text &&
              ((w.text as TextSpan).children!.first as Text).data == formOfCommunication &&
              ((w.text as TextSpan).children!.first as Text).style == themeExtension.formOfCommunicationTextStyle &&
              (w.text as TextSpan).children!.last is Text &&
              ((w.text as TextSpan).children!.last as Text).data == contactInformation &&
              ((w.text as TextSpan).children!.last as Text).style == themeExtension.contactInformationTextStyle,
        ),
        findsOneWidget,
      );
    }

    expect(find.byType(MainScreenBodyContactInformationSection), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MainScreenBodySection &&
            w.title == localizations.contactInformationTitle &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 2,
      ),
      findsOneWidget,
    );
    expectFormOfContact('Email', 'antonkoetzler-faust@hotmail.com');
    expectFormOfContact(localizations.contactInformationPhoneNumberTitle, '+55 (48) 98818-9095');
  });
}
