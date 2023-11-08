import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:your_social_now/presentation/create_new_password_screen/models/create_new_password_model.dart';part 'create_new_password_event.dart';part 'create_new_password_state.dart';class CreateNewPasswordBloc extends Bloc<CreateNewPasswordEvent, CreateNewPasswordState> {CreateNewPasswordBloc(CreateNewPasswordState initialState) : super(initialState) { on<CreateNewPasswordInitialEvent>(_onInitialize); }

_onInitialize(CreateNewPasswordInitialEvent event, Emitter<CreateNewPasswordState> emit, ) async  { emit(state.copyWith(statusFillTypePasswordController: TextEditingController(), statusFillTypePasswordOneController: TextEditingController())); } 
 }
