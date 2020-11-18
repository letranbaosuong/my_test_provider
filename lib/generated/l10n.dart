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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tiếng Anh`
  String get en {
    return Intl.message(
      'Tiếng Anh',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get vi {
    return Intl.message(
      'Tiếng Việt',
      name: 'vi',
      desc: '',
      args: [],
    );
  }

  /// `Ứng dụng Bloc`
  String get tieu_de_trang_chu {
    return Intl.message(
      'Ứng dụng Bloc',
      name: 'tieu_de_trang_chu',
      desc: '',
      args: [],
    );
  }

  /// `Đếm`
  String get dem {
    return Intl.message(
      'Đếm',
      name: 'dem',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi màu`
  String get thay_doi_mau {
    return Intl.message(
      'Thay đổi màu',
      name: 'thay_doi_mau',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt chủ đề`
  String get tieu_de_theme {
    return Intl.message(
      'Cài đặt chủ đề',
      name: 'tieu_de_theme',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}