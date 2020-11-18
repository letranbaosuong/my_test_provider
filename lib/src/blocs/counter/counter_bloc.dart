import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/base_event.dart';
import 'package:bloc_flutter_app/src/blocs/counter/counter_event.dart';
import 'package:bloc_flutter_app/src/blocs/home/color_event.dart';
import 'package:flutter/foundation.dart';

class CounterBloc extends BaseBloc {
  var _count = 0;

  CounterBloc() : super();

  void increment() {
    ++_count;
    notifyListeners();
  }

  void decrement() {
    --_count;
    notifyListeners();
  }

  void mute() {
    _count = 0;
    notifyListeners();
  }

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is ColorEvent) {
      notifyListeners();
    }
  }

  int get count => _count;
}
