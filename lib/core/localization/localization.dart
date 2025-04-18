import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'english.dart';
import 'russian.dart';

export 'english.dart';
export 'russian.dart';

enum SupportedLanguages {
  ru,
  en;

  static const defaultLanguage = SupportedLanguages.ru;

  static SupportedLanguages? from(Locale locale) => SupportedLanguages.values
      .firstWhereOrNull((e) => e.name == locale.languageCode);

  Locale get locale => switch (this) {
    SupportedLanguages.ru => LanguageRU().locale,
    SupportedLanguages.en => LanguageEN().locale,
  };

  Language get language => switch (this) {
    SupportedLanguages.ru => LanguageRU(),
    SupportedLanguages.en => LanguageEN(),
  };
}

abstract class Language {
  static Language of(BuildContext context) =>
      Localizations.of<Language>(context, Language)!;

  static Language from(Locale locale) {
    switch (SupportedLanguages.from(locale)) {
      case SupportedLanguages.ru:
        return LanguageRU();
      case SupportedLanguages.en:
        return LanguageEN();
      default:
        return LanguageRU();
    }
  }

  Locale get locale;
  String get name;

  String get startPet;
}
