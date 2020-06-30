import 'bloc/status_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'status_page.dart';

class StatusModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StatusBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => StatusPage(title: args.data,)),
      ];

  static Inject get to => Inject<StatusModule>.of();
}
