import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/base_event.dart';
import 'package:bloc_flutter_app/src/blocs/theme_app/theme_app_event.dart';
import 'package:flutter/foundation.dart';

class ThemeAppBloc extends BaseBloc {
  bool isThemeLight = false;

  ThemeAppBloc() : super();

  void changeTheme(bool isThemeLight) {
    isThemeLight = isThemeLight;
    emit(ThemeAppEvent(isThemeLight));
  }

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is ThemeAppEvent) {
      isThemeLight = event.isThemeLight;
      notifyListeners();
    }
  }
}
