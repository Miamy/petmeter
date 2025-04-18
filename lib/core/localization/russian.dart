import 'dart:ui';

import 'localization.dart';

class LanguageRU extends Language {
  static final LanguageRU _instance = LanguageRU._internal();

  factory LanguageRU() {
    return _instance;
  }

  LanguageRU._internal();

  static const localeDE = Locale('ru', 'RU');

  @override
  Locale get locale => localeDE;

  @override
  String get name => 'Русский';

  @override
  String get startPet => 'Начните гладить';
}
