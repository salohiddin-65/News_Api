import 'package:flutter/material.dart';
import 'package:news_api_project/core/constants/constants.dart';
import 'package:news_api_project/data/models/news_model.dart';
import 'package:news_api_project/data/service/news_service.dart';

class BusinessWidget extends StatelessWidget {
  const BusinessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService.getNews(Constants.businessUrl),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          var data = snapshot.data as NewsModel;
          return ListView.builder(
            itemCount: data.articles!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data.articles![index].title.toString()),
              );
            },
          );
        }
      },
    );
  }
}
