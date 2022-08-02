import 'package:blog_app/blog_home/repositery/profile_repository.dart';
import 'package:blog_app/blog_home/models/article.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository) : super(ProfileInitial());

  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is LoadArticles) {
      try {
        final articles = await profileRepository.fetchArticles();
        yield ArticleOperationSuccess(articles);
      } catch (e) {
        yield ArticelOperationFailure(e.toString());
      }
    }
  }
}
