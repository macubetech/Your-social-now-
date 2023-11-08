// ignore_for_file: must_be_immutable

part of 'suggested_bloc.dart';

class SuggestedState extends Equatable {
  SuggestedState({this.suggestedModelObj});

  SuggestedModel? suggestedModelObj;

  @override
  List<Object?> get props => [
        suggestedModelObj,
      ];
  SuggestedState copyWith({SuggestedModel? suggestedModelObj}) {
    return SuggestedState(
      suggestedModelObj: suggestedModelObj ?? this.suggestedModelObj,
    );
  }
}
