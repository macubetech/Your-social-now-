// ignore_for_file: must_be_immutable

part of 'trending_sounds_details_bloc.dart';

class TrendingSoundsDetailsState extends Equatable {
  TrendingSoundsDetailsState({this.trendingSoundsDetailsModelObj});

  TrendingSoundsDetailsModel? trendingSoundsDetailsModelObj;

  @override
  List<Object?> get props => [
        trendingSoundsDetailsModelObj,
      ];
  TrendingSoundsDetailsState copyWith(
      {TrendingSoundsDetailsModel? trendingSoundsDetailsModelObj}) {
    return TrendingSoundsDetailsState(
      trendingSoundsDetailsModelObj:
          trendingSoundsDetailsModelObj ?? this.trendingSoundsDetailsModelObj,
    );
  }
}
