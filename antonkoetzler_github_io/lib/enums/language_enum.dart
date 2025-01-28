import 'package:collection/collection.dart';
import 'package:faker/faker.dart';

/// Languages provided in the program.
enum LanguageEnum {
  english('en-US'),
  portuguese('pt-BR');

  final String id;

  const LanguageEnum(this.id);

  static LanguageEnum? tryFromId(String id) => values.firstWhereOrNull((e) => e.id == id);

  factory LanguageEnum.fake() => values[faker.randomGenerator.integer(values.length)];

  bool get isEnglish => this == english;
  bool get isPortuguese => this == portuguese;
}
