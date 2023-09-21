import 'package:dio/dio.dart';
import 'package:news_api_project/data/models/news_model.dart';

class NewsService {
  static Future<dynamic> getNews(String url) async {
    try {
      Response response = await Dio().get(url);
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
