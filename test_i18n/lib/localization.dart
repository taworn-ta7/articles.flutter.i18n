import 'package:flutter/material.dart';
import './i18n/strings.g.dart';

/// Localization class.
class Localization {
  static Localization? _instance;

  static Localization instance() {
    _instance ??= Localization();
    return _instance!;
  }

  // ----------------------------------------------------------------------

  /// Construction.
  Localization();

  /// Supported locale list.
  final list = const [
    Locale('en'),
    Locale('th'),
  ];

  /// Current locale.
  Locale get current => list[_index];
  int _index = 0;

  /// Change current locale.
  void changeLocale(String locale) {
    late int i;
    switch (locale) {
      case 'th':
        i = 1;
        break;

      case 'en':
      case '':
      default:
        i = 0;
        break;
    }

    if (_index != i) {
      _index = i;
      LocaleSettings.setLocaleRaw(locale);
    }
  }

  /// Refresh current locale.
  void refreshLocale() {
    LocaleSettings.setLocaleRaw(current.languageCode);
  }
}
