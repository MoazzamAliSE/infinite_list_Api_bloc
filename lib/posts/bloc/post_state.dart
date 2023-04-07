import 'package:equatable/equatable.dart';
import 'package:infinite_list_bloc_flutter/posts/models/post.dart';

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
        status: status ?? this.status,
        posts: posts ?? this.posts,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }

  @override
  // TODO: implement props
  List<Object> get props => [status, posts, hasReachedMax];

  @override
  String toString() {
    // TODO: implement toString
    return '''PostState {status:$status,hasReachedMax:$hasReachedMax,posts:${posts.length}}''';
  }
}
