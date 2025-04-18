import 'dart:ui';

import 'localization.dart';

class LanguageEN extends Language {
  static final LanguageEN _instance = LanguageEN._internal();

  factory LanguageEN() {
    return _instance;
  }

  LanguageEN._internal();

  static const localeEN = Locale('en', 'US');

  @override
  Locale get locale => localeEN;

  @override
  String get name => 'English';

  @override
  String get startPet => 'Start pet';
}
