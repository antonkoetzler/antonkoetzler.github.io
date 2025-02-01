import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../exports.dart';

void main() {
  testWidgets('MainScreenBody', (WidgetTester tester) async {
    late final MainScreenBodyThemeExtension themeExtension;

    await tester.pumpWidget(
      BaseWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MainScreenBodyThemeExtension>();
            return const MainScreenBody();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MainScreenBody), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SizedBox &&
            w.width == double.infinity &&
            w.child is Scrollbar &&
            (w.child as Scrollbar).thumbVisibility == true &&
            (w.child as Scrollbar).child is SingleChildScrollView &&
            ((w.child as Scrollbar).child as SingleChildScrollView).padding == themeExtension.padding &&
            ((w.child as Scrollbar).child as SingleChildScrollView).child is Column &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).mainAxisSize == MainAxisSize.min &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).spacing == themeExtension.spacing &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children.length == 13 &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children.first is MainScreenBodyMeSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[1] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[2] is MainScreenBodyAboutMeSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[3] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[4] is MainScreenBodyTechStackSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[5] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[6] is MainScreenBodyDevStackSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[7] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[8] is MainScreenBodyProfessionalExperienceSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[9] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[10] is MainScreenBodyContactInformationSection &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children[11] is ConstrainedBox &&
            (((w.child as Scrollbar).child as SingleChildScrollView).child as Column).children.last is MainScreenBodyProjectsSection,
      ),
      findsOneWidget,
    );
  });
}
