import 'package:dio/dio.dart';
import 'package:news_app0/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
   try {
     var response = await dio.get(
         'https://newsapi.org/v2/top-headlines?country=us&apiKey=946cfcd987744baf8b5b03658f82a42d&category=$category');
     Map<String, dynamic> jsonData = response.data;
     List<dynamic> articles = jsonData['articles'];
     List<ArticleModel> articlesList = [];

     for (var article in articles) {
       ArticleModel articleModel = ArticleModel.fromJson(article);
       articlesList.add(articleModel);
     }
     return articlesList;
   } catch (e) {
     return[];
   }
  }
}
