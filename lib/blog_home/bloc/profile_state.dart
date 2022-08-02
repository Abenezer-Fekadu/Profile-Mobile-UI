part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ArticleOperationSuccess extends ProfileState {
  final Iterable<Article> articles;

  const ArticleOperationSuccess([this.articles = const []]);

  @override
  List<Object> get props => [articles];
}

class ArticelOperationFailure extends ProfileState {
  final String message;

  const ArticelOperationFailure(this.message);

  @override
  List<Object> get props => [message];
}
