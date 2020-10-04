import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/models/networking/api_service.dart';

class NewsRepository {
  final ApiService _apiService = ApiService.create();

  Future<List<Articles>> getNews(
      {@required SearchType searchType,
      CategoryListData category,
      String keyword}) async {
    Response response;
    List<Articles> result;

    try {
      switch (searchType) {
        case SearchType.HEAD_LINE:
          response = await _apiService.getHeadlines();
          break;
        case SearchType.KEYWORD:
          response = await _apiService.getKeyWords(keyword: keyword);
          break;
        case SearchType.CATEGORY:
          response = await _apiService.getCategory(category: category.nameEn);
          break;
      }
      if (response.isSuccessful) {
        final responseBody = response.body;
        result = News.fromJson(responseBody).articles;
      } else {
        final errorCode = response.statusCode;
        final error = response.error;
        print('isSuccessful$error');
      }
    } catch (error) {
      print(error);
    }

    return result;
  }
}
