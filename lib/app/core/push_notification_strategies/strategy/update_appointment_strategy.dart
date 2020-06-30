import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_push_notification_strategy/app/core/push_notification_strategies/strategy/i_push_strategy.dart';

class UpdateAppointmentStrategy implements IPushStrategy {
  @override
  void execute(Map<String, dynamic> pushPayload) {
    print('#####################################');
    print('######## UpdateAppointmentStrategy ######## ');
    Modular.to.pushNamed('/status', arguments: 'Status Alterado para: ${pushPayload['status']}');
  }

}