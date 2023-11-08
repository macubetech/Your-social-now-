// ignore_for_file: must_be_immutable

part of 'trending_hashtag_details_bloc.dart';

class TrendingHashtagDetailsState extends Equatable {
  TrendingHashtagDetailsState({this.trendingHashtagDetailsModelObj});

  TrendingHashtagDetailsModel? trendingHashtagDetailsModelObj;

  @override
  List<Object?> get props => [
        trendingHashtagDetailsModelObj,
      ];
  TrendingHashtagDetailsState copyWith(
      {TrendingHashtagDetailsModel? trendingHashtagDetailsModelObj}) {
    return TrendingHashtagDetailsState(
      trendingHashtagDetailsModelObj:
          trendingHashtagDetailsModelObj ?? this.trendingHashtagDetailsModelObj,
    );
  }
}
