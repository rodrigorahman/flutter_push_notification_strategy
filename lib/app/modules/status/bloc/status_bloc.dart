import 'dart:async';
import 'package:bloc/bloc.dart';

import 'status_event.dart';
import 'status_state.dart';

class StatusBloc extends Bloc<StatusEvent, StatusState> {
  @override
  StatusState get initialState => InitialStatusState();

  @override
  Stream<StatusState> mapEventToState(StatusEvent event) async* {
    // TODO: Add Logic
  }
}
