import 'package:app/business/bloc/base_event.dart';
import 'package:app/business/bloc/language/language_event.dart';
import 'package:app/business/bloc/language/language_state.dart';
import 'package:app/data/entities/language.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBloc extends Bloc<BaseEvent, LanguageState> {
  // supported languages
  List<Language> supports = [
    Language(code: 'US', locale: 'en', language: 'English'),
    Language(code: 'VN', locale: 'vi', language: 'VietNam'),
  ];

  LanguageBloc() : super(LanguageState("vi"));

  String get locale => state.language;

  void changeLanguage(String value) {
    add(LanguageEvent(value));
  }

  String? getCode() {
    return supports[supports
            .indexWhere((language) => language.locale == state.language)]
        .code;
  }

  String? getLanguage() {
    return supports[supports
            .indexWhere((language) => language.locale == state.language)]
        .language;
  }

  dynamic dispose() {}
}
