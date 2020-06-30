import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_push_notification_strategy/app/app_module.dart';
import 'package:flutter_push_notification_strategy/app/modules/status/bloc/status_bloc.dart';
import 'package:flutter_push_notification_strategy/app/modules/status/status_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(StatusModule());
  StatusBloc bloc;

  // setUp(() {
  //     bloc = StatusModule.to.get<StatusBloc>();
  // });

  // group('StatusBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<StatusBloc>());
  //   });
  // });
}
