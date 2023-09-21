import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String apikey = dotenv.get("API_KEY");
  static String appleUrl =
      "https://newsapi.org/v2/everything?q=apple&from=2023-09-20&to=2023-09-20&sortBy=popularity&apiKey=$apikey";
  static String teslaUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2023-08-21&sortBy=publishedAt&apiKey=$apikey";
  static String businessUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apikey";
  static String technologyUrl =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apikey";
  static String articleUrl =
      "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=$apikey";
}
