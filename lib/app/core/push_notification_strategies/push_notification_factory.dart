import 'package:flutter_push_notification_strategy/app/core/push_notification_strategies/strategy/chat_message_strategy.dart';
import 'package:flutter_push_notification_strategy/app/core/push_notification_strategies/strategy/i_push_strategy.dart';
import 'package:flutter_push_notification_strategy/app/core/push_notification_strategies/strategy/update_appointment_strategy.dart';

class PushNotificationFactory {
  Map<String, dynamic> pushPayload;
  IPushStrategy strategy;

  PushNotificationFactory.create(this.pushPayload) {
    switch (pushPayload['type']) {
      case 'updateAppointment':
        strategy = UpdateAppointmentStrategy();
        break;
      case 'chatMessage':
        strategy = ChatMessageStrategy();
        break;
      default:
        throw Exception('Estratégia Não implementada');
    }
  }

  void execute() {
    strategy.execute(pushPayload);
  }
}
