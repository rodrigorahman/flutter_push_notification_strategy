import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_push_notification_strategy/app/core/push_notification_strategies/strategy/i_push_strategy.dart';

class ChatMessageStrategy implements IPushStrategy {
  @override
  void execute(Map<String, dynamic> pushPayload) {
    Modular.to.pushNamed('/chat', arguments: pushPayload['message']);
  }

}