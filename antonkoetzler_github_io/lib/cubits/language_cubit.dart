import 'package:antonkoetzler_github_io/antonkoetzler_github_io.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [Cubit] storing browser's language.
final class LanguageCubit extends Cubit<LanguageEnum> {
  LanguageCubit() : super(LanguageEnum.english);
  void getLanguage() async {
    final String? language = (await DeviceInfoPlugin().webBrowserInfo).language;
    if (language == null) return;
    final LanguageEnum? languageEnum = LanguageEnum.tryFromId(language);
    if (languageEnum == null) return;
    emit(languageEnum);
  }
}
