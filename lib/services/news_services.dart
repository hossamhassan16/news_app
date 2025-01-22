import 'package:dio/dio.dart';
import 'package:my_news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> GetNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=db7060ffb172460daf9645f3904e0c0b&category=entertainment",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"]);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
