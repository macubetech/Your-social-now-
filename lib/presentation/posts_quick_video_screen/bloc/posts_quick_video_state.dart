// ignore_for_file: must_be_immutable

part of 'posts_quick_video_bloc.dart';

class PostsQuickVideoState extends Equatable {
  PostsQuickVideoState({this.postsQuickVideoModelObj});

  PostsQuickVideoModel? postsQuickVideoModelObj;

  @override
  List<Object?> get props => [
        postsQuickVideoModelObj,
      ];
  PostsQuickVideoState copyWith(
      {PostsQuickVideoModel? postsQuickVideoModelObj}) {
    return PostsQuickVideoState(
      postsQuickVideoModelObj:
          postsQuickVideoModelObj ?? this.postsQuickVideoModelObj,
    );
  }
}
