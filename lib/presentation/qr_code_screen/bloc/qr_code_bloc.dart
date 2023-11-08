import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:your_social_now/presentation/qr_code_screen/models/qr_code_model.dart';
part 'qr_code_event.dart';
part 'qr_code_state.dart';

class QrCodeBloc extends Bloc<QrCodeEvent, QrCodeState> {
  QrCodeBloc(QrCodeState initialState) : super(initialState) {
    on<QrCodeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrCodeInitialEvent event,
    Emitter<QrCodeState> emit,
  ) async {}
}
