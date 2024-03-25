import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getGeneralNews({required String category }) async {
    try {
  Response response = await  dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=ecb8139e18df43509ad0e26d8ba9782d&category=$category');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList = [];
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel( 
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description']);
    articlesList.add(articleModel);
  }
  return articlesList;
}catch (e) {
 print('Error getting news data $e');
 return [];
}
  }
}
