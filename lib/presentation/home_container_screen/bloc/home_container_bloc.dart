import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:your_social_now/widgets/custom_bottom_bar.dart';import 'package:your_social_now/presentation/home_container_screen/models/home_container_model.dart';part 'home_container_event.dart';part 'home_container_state.dart';class HomeContainerBloc extends Bloc<HomeContainerEvent, HomeContainerState> {HomeContainerBloc(HomeContainerState initialState) : super(initialState) { on<HomeContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeContainerInitialEvent event, Emitter<HomeContainerState> emit, ) async  {  } 
 }
