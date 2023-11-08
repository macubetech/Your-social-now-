// ignore_for_file: must_be_immutable

part of 'search_results_videos_bloc.dart';

class SearchResultsVideosState extends Equatable {
  SearchResultsVideosState({this.searchResultsVideosModelObj});

  SearchResultsVideosModel? searchResultsVideosModelObj;

  @override
  List<Object?> get props => [
        searchResultsVideosModelObj,
      ];
  SearchResultsVideosState copyWith(
      {SearchResultsVideosModel? searchResultsVideosModelObj}) {
    return SearchResultsVideosState(
      searchResultsVideosModelObj:
          searchResultsVideosModelObj ?? this.searchResultsVideosModelObj,
    );
  }
}
