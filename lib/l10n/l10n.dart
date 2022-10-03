// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Авторизация`
  String get Authorization {
    return Intl.message(
      'Авторизация',
      name: 'Authorization',
      desc: '',
      args: [],
    );
  }

  /// `Логин или почта`
  String get LoginOrMail {
    return Intl.message(
      'Логин или почта',
      name: 'LoginOrMail',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get Enter {
    return Intl.message(
      'Войти',
      name: 'Enter',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get Register {
    return Intl.message(
      'Зарегистрироваться',
      name: 'Register',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get Registration {
    return Intl.message(
      'Регистрация',
      name: 'Registration',
      desc: '',
      args: [],
    );
  }

  /// `Логин`
  String get Login {
    return Intl.message(
      'Логин',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get Phone {
    return Intl.message(
      'Телефон',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get Mail {
    return Intl.message(
      'Почта',
      name: 'Mail',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get Password {
    return Intl.message(
      'Пароль',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Создать аккаунт`
  String get CreateAccount {
    return Intl.message(
      'Создать аккаунт',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get Search {
    return Intl.message(
      'Поиск',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Лента`
  String get Line {
    return Intl.message(
      'Лента',
      name: 'Line',
      desc: '',
      args: [],
    );
  }

  /// `Карта`
  String get Map {
    return Intl.message(
      'Карта',
      name: 'Map',
      desc: '',
      args: [],
    );
  }

  /// `Избранные`
  String get Favorites {
    return Intl.message(
      'Избранные',
      name: 'Favorites',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get Profile {
    return Intl.message(
      'Профиль',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
