import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';


class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d2d441a9abf8417b9901f050cdf8b3dc&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel =ArticleModel(
        image: article['urlToImage'] ?? "",
        title: article['title'] ?? "",
        subTitle: article['description'] ?? "",
        webViewUrl: article['url'] ?? "",
        );
    articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}