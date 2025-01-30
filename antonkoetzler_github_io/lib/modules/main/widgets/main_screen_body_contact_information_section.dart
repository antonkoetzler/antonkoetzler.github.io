import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class MainScreenBodyContactInformationSection extends StatelessWidget {
  const MainScreenBodyContactInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;

    return MainScreenBodySection(
      title: localizations.contactInformationTitle,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _FormOfContact(
            'Email',
            'antonkoetzler-faust@hotmail.com',
          ),
          _FormOfContact(
            localizations.contactInformationPhoneNumberTitle,
            '+55 (48) 98818-9095',
          ),
        ],
      ),
    );
  }
}

final class _FormOfContact extends StatelessWidget {
  final String _formOfCommunication;
  final String _contactInformation;

  const _FormOfContact(this._formOfCommunication, this._contactInformation);

  @override
  Widget build(BuildContext context) {
    final typographyInstance = MyoroTypographyTheme.instance;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$_formOfCommunication: ',
            style: typographyInstance.semiBoldMedium,
          ),
          TextSpan(
            text: _contactInformation,
            style: typographyInstance.regularMedium,
          ),
        ],
      ),
    );
  }
}
