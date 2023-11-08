// ignore_for_file: must_be_immutable

part of 'choose_your_interest_bloc.dart';

class ChooseYourInterestState extends Equatable {
  ChooseYourInterestState({this.chooseYourInterestModelObj});

  ChooseYourInterestModel? chooseYourInterestModelObj;

  @override
  List<Object?> get props => [
        chooseYourInterestModelObj,
      ];
  ChooseYourInterestState copyWith(
      {ChooseYourInterestModel? chooseYourInterestModelObj}) {
    return ChooseYourInterestState(
      chooseYourInterestModelObj:
          chooseYourInterestModelObj ?? this.chooseYourInterestModelObj,
    );
  }
}
