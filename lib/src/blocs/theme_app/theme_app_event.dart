import 'package:bloc_flutter_app/src/blocs/base_event.dart';

class ThemeAppEvent extends BaseEvent {
  final bool isThemeLight;

  ThemeAppEvent(this.isThemeLight);
}
