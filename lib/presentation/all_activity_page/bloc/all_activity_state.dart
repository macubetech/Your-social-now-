// ignore_for_file: must_be_immutable

part of 'all_activity_bloc.dart';

class AllActivityState extends Equatable {
  AllActivityState({
    this.selectedDropDownValue,
    this.allActivityModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AllActivityModel? allActivityModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        allActivityModelObj,
      ];
  AllActivityState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AllActivityModel? allActivityModelObj,
  }) {
    return AllActivityState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      allActivityModelObj: allActivityModelObj ?? this.allActivityModelObj,
    );
  }
}
