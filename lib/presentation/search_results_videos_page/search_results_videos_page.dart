import '../search_results_videos_page/widgets/gridplay_item_widget.dart';
import 'bloc/search_results_videos_bloc.dart';
import 'models/gridplay_item_model.dart';
import 'models/search_results_videos_model.dart';
import 'package:flutter/material.dart';
import 'package:your_social_now/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchResultsVideosPage extends StatefulWidget {
  @override
  _SearchResultsVideosPageState createState() =>
      _SearchResultsVideosPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultsVideosBloc>(
      create: (context) => SearchResultsVideosBloc(SearchResultsVideosState(
        searchResultsVideosModelObj: SearchResultsVideosModel(),
      ))
        ..add(SearchResultsVideosInitialEvent()),
      child: SearchResultsVideosPage(),
    );
  }
}

class _SearchResultsVideosPageState extends State<SearchResultsVideosPage>
    with AutomaticKeepAliveClientMixin<SearchResultsVideosPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 10,
                  right: 24,
                ),
                child: BlocSelector<SearchResultsVideosBloc,
                    SearchResultsVideosState, SearchResultsVideosModel?>(
                  selector: (state) => state.searchResultsVideosModelObj,
                  builder: (context, searchResultsVideosModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          329,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          8,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          8,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: searchResultsVideosModelObj
                              ?.gridplayItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        GridplayItemModel model = searchResultsVideosModelObj
                                ?.gridplayItemList[index] ??
                            GridplayItemModel();
                        return GridplayItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
