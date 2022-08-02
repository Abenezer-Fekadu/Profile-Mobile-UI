import 'package:blog_app/blog_home/data_provider/profile_data_provider.dart';
import 'package:blog_app/blog_home/models/article.dart';

class ProfileRepository {
  final ProfileDataProvider _dataProvider;

  ProfileRepository(this._dataProvider);

  Future<List<Article>> fetchArticles() async {
    return _dataProvider.fetchArticles();
  }
}
