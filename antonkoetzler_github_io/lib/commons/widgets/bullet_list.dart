import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// i.e.:
/// - Hello;
/// - World;
/// - 123.
final class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    final stringBuffer = StringBuffer();
    for (final item in items) {
      final isLastFact = items.indexOf(item) == items.length - 1;
      final formattedFact = '- $item${isLastFact ? '.' : ';'}';
      isLastFact ? stringBuffer.write(formattedFact) : stringBuffer.writeln(formattedFact);
    }

    return Text(
      stringBuffer.toString(),
      style: MyoroTypographyTheme.instance.regularMedium.copyWith(height: 1.75),
    );
  }
}
