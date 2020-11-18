import 'package:bloc_flutter_app/src/blocs/base_event.dart';

class ColorEvent extends BaseEvent {
  final bool isChangeColor;

  ColorEvent(this.isChangeColor);
}
