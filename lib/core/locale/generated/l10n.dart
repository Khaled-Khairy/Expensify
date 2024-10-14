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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gain total control of your money`
  String get carouselImage1_title {
    return Intl.message(
      'Gain total control of your money',
      name: 'carouselImage1_title',
      desc: '',
      args: [],
    );
  }

  /// `Become your own money manager and make every cent count`
  String get carouselImage1_subtitle {
    return Intl.message(
      'Become your own money manager and make every cent count',
      name: 'carouselImage1_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Know where your money goes`
  String get carouselImage2_title {
    return Intl.message(
      'Know where your money goes',
      name: 'carouselImage2_title',
      desc: '',
      args: [],
    );
  }

  /// `Track your transaction easily, with categories and financial report`
  String get carouselImage2_subtitle {
    return Intl.message(
      'Track your transaction easily, with categories and financial report',
      name: 'carouselImage2_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Planning ahead`
  String get carouselImage3_title {
    return Intl.message(
      'Planning ahead',
      name: 'carouselImage3_title',
      desc: '',
      args: [],
    );
  }

  /// `Setup your budget for each category so you are in control`
  String get carouselImage3_subtitle {
    return Intl.message(
      'Setup your budget for each category so you are in control',
      name: 'carouselImage3_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get onboarding_signup {
    return Intl.message(
      'Sign Up',
      name: 'onboarding_signup',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get onboarding_login {
    return Intl.message(
      'Login',
      name: 'onboarding_login',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
