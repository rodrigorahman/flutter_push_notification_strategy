import 'package:flutter_push_notification_strategy/app/modules/status/status_module.dart';

import 'bloc/app_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_push_notification_strategy/app/app_widget.dart';
import 'package:flutter_push_notification_strategy/app/modules/home/home_module.dart';

import 'modules/chat/chat_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/chat', module: ChatModule()),
        Router('/status', module: StatusModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
