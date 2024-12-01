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

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `How To Play?`
  String get how_to_play {
    return Intl.message(
      'How To Play?',
      name: 'how_to_play',
      desc: '',
      args: [],
    );
  }

  /// `Connect one Player to another by a category. You can choose each category 7 times in one round. Streak stops when 2 players are not connected. You have 3 lives and 3 skips.`
  String get how_to_play_desc {
    return Intl.message(
      'Connect one Player to another by a category. You can choose each category 7 times in one round. Streak stops when 2 players are not connected. You have 3 lives and 3 skips.',
      name: 'how_to_play_desc',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Same Award`
  String get category1_title {
    return Intl.message(
      'Same Award',
      name: 'category1_title',
      desc: '',
      args: [],
    );
  }

  /// `Players must have won the same award. Awards: Golden Boot, Ballon Dor, UEFA Poty.`
  String get category1_desc {
    return Intl.message(
      'Players must have won the same award. Awards: Golden Boot, Ballon Dor, UEFA Poty.',
      name: 'category1_desc',
      desc: '',
      args: [],
    );
  }

  /// `Same Nation`
  String get category2_title {
    return Intl.message(
      'Same Nation',
      name: 'category2_title',
      desc: '',
      args: [],
    );
  }

  /// `Players must have the same Nation.`
  String get category2_desc {
    return Intl.message(
      'Players must have the same Nation.',
      name: 'category2_desc',
      desc: '',
      args: [],
    );
  }

  /// `Same Club`
  String get category3_title {
    return Intl.message(
      'Same Club',
      name: 'category3_title',
      desc: '',
      args: [],
    );
  }

  /// `Players must have played for the same Club. Not necessary at the same time.`
  String get category3_desc {
    return Intl.message(
      'Players must have played for the same Club. Not necessary at the same time.',
      name: 'category3_desc',
      desc: '',
      args: [],
    );
  }

  /// `Same League`
  String get category4_title {
    return Intl.message(
      'Same League',
      name: 'category4_title',
      desc: '',
      args: [],
    );
  }

  /// `Players must have played in the same League. Not necessary at the same time.`
  String get category4_desc {
    return Intl.message(
      'Players must have played in the same League. Not necessary at the same time.',
      name: 'category4_desc',
      desc: '',
      args: [],
    );
  }

  /// `Same Trophy`
  String get category5_title {
    return Intl.message(
      'Same Trophy',
      name: 'category5_title',
      desc: '',
      args: [],
    );
  }

  /// `Players must have won the same Trophy. Trophies: Top 5 Leagues, UCL, Europa League, World Cup, Euro, Copa America, AFCON.`
  String get category5_desc {
    return Intl.message(
      'Players must have won the same Trophy. Trophies: Top 5 Leagues, UCL, Europa League, World Cup, Euro, Copa America, AFCON.',
      name: 'category5_desc',
      desc: '',
      args: [],
    );
  }

  /// `Same Position`
  String get category6_title {
    return Intl.message(
      'Same Position',
      name: 'category6_title',
      desc: '',
      args: [],
    );
  }

  /// `Players plays in the same position.`
  String get category6_desc {
    return Intl.message(
      'Players plays in the same position.',
      name: 'category6_desc',
      desc: '',
      args: [],
    );
  }

  /// `Sound`
  String get sound {
    return Intl.message(
      'Sound',
      name: 'sound',
      desc: '',
      args: [],
    );
  }

  /// `Loading .....`
  String get loading {
    return Intl.message(
      'Loading .....',
      name: 'loading',
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
