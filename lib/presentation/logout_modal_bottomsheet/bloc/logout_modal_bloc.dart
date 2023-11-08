import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:your_social_now/presentation/logout_modal_bottomsheet/models/logout_modal_model.dart';
part 'logout_modal_event.dart';
part 'logout_modal_state.dart';

class LogoutModalBloc extends Bloc<LogoutModalEvent, LogoutModalState> {
  LogoutModalBloc(LogoutModalState initialState) : super(initialState) {
    on<LogoutModalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogoutModalInitialEvent event,
    Emitter<LogoutModalState> emit,
  ) async {}
}
