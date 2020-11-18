import 'package:bloc_flutter_app/src/blocs/base_event.dart';

class CountEvent extends BaseEvent {
  final int count;

  CountEvent(this.count);
}
