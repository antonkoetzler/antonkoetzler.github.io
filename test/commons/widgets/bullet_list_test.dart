import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(
    faker.randomGenerator.integer(100),
    (_) => faker.randomGenerator.string(100),
  );

  testWidgets('BulletList', (WidgetTester tester) async {
    late final BulletListThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<BulletListThemeExtension>();
            return BulletList(
              items,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    final stringBuffer = StringBuffer();
    for (final item in items) {
      final isLastFact = items.indexOf(item) == items.length - 1;
      final formattedFact = '- $item${isLastFact ? '.' : ';'}';
      isLastFact ? stringBuffer.write(formattedFact) : stringBuffer.writeln(formattedFact);
    }

    expect(
      find.byWidgetPredicate((Widget w) {
        return w is SelectableText && w.data == stringBuffer.toString() && w.style == themeExtension.textStyle;
      }),
      findsOneWidget,
    );
  });
}
