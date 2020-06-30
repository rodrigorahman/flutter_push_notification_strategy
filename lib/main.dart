import 'package:flutter/material.dart';
import 'package:flutter_push_notification_strategy/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_push_notification_strategy/app/core/push_notification_configure.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  PushNotificationConfigure().configure();
  runApp(ModularApp(module: AppModule()));
}
