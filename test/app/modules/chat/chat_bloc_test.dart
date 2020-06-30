import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_push_notification_strategy/app/app_module.dart';
import 'package:flutter_push_notification_strategy/app/modules/chat/bloc/chat_bloc.dart';
import 'package:flutter_push_notification_strategy/app/modules/chat/chat_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ChatModule());
  ChatBloc bloc;

  // setUp(() {
  //     bloc = ChatModule.to.get<ChatBloc>();
  // });

  // group('ChatBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ChatBloc>());
  //   });
  // });
}
