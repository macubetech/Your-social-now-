import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profile_item_model.dart';import 'package:your_social_now/presentation/profile_screen/models/profile_model.dart';part 'profile_event.dart';part 'profile_state.dart';class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {ProfileBloc(ProfileState initialState) : super(initialState) { on<ProfileInitialEvent>(_onInitialize); }

_onInitialize(ProfileInitialEvent event, Emitter<ProfileState> emit, ) async  { emit(state.copyWith(profileModelObj: state.profileModelObj?.copyWith(profileItemList: fillProfileItemList()))); } 
List<ProfileItemModel> fillProfileItemList() { return List.generate(6, (index) => ProfileItemModel()); } 
 }
