import 'dart:async';
import 'dart:ui';

import 'package:bloc_flutter_app/src/blocs/base_event.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseBloc with ChangeNotifier {
  final _appController = StreamController<BaseEvent>.broadcast();
  Stream get appStream => _appController.stream;
  Sink get appSink => _appController.sink;
  BaseBloc() {
    appStream.listen((event) {
      dispatchEvent(event);
    });
  }

  void dispatchEvent(BaseEvent event);

  void emit(BaseEvent event) {
    appSink.add(event);
  }

  @override
  void dispose() {
    super.dispose();
    _appController.close();
    appSink.close();
  }
}

class AppBloc extends BaseBloc {
  // static final AppBloc _instance = AppBloc._internal();
  // factory AppBloc() => _instance;
  // AppBloc._internal();

  Locale locale;
  AppBloc() : super();
  void update(Locale next) {
    if (next != null) {
      locale = next;
      notifyListeners();
    }
  }

  @override
  void dispatchEvent(BaseEvent event) {}
}
