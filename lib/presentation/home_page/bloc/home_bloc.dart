import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:your_social_now/presentation/home_page/models/home_model.dart';part 'home_event.dart';part 'home_state.dart';class HomeBloc extends Bloc<HomeEvent, HomeState> {HomeBloc(HomeState initialState) : super(initialState) { on<HomeInitialEvent>(_onInitialize); }

_onInitialize(HomeInitialEvent event, Emitter<HomeState> emit, ) async  {  } 
 }
