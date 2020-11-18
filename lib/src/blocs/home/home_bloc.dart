import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/base_event.dart';
import 'package:bloc_flutter_app/src/blocs/counter/counter_event.dart';
import 'package:bloc_flutter_app/src/blocs/home/color_event.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeBloc extends BaseBloc {
  bool hasColor = false;

  void changeColor(bool hasColor) {
    this.hasColor = hasColor;
    notifyListeners();
  }

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is CountEvent) {
      notifyListeners();
    }
  }
}
