import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:your_social_now/presentation/go_live_screen/models/go_live_model.dart';part 'go_live_event.dart';part 'go_live_state.dart';class GoLiveBloc extends Bloc<GoLiveEvent, GoLiveState> {GoLiveBloc(GoLiveState initialState) : super(initialState) { on<GoLiveInitialEvent>(_onInitialize); }

_onInitialize(GoLiveInitialEvent event, Emitter<GoLiveState> emit, ) async  {  } 
 }
