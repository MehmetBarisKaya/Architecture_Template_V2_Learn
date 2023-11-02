import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class HomeViewState extends Equatable {
  const HomeViewState({required this.isLoading, this.posts});

  final bool isLoading;
  final List<PostModel>? posts;

  @override
  List<Object?> get props => [isLoading, posts];

  HomeViewState copyWith({bool? isLoading, List<PostModel>? posts}) {
    return HomeViewState(
      isLoading: isLoading ?? this.isLoading,
      posts: posts ?? this.posts,
    );
  }
}
