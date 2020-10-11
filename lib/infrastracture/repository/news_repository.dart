import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/main.dart';
import 'package:practicehome/models/db/database.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/models/networking/api_service.dart';
import 'package:provider/provider.dart';
import 'package:practicehome/utill/extensions.dart';

class NewsRepository {
  final ApiService _apiService = ApiService.create();

  Future<List<Articles>> getNews(
      {@required SearchType searchType,
      CategoryListData category,
      String keyword}) async {
    // MyDatabase myDatabase;
    Response response;
    List<Articles> result = List<Articles>();

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
        print("repositoryのgetNewsメソッド");
        // result = News.fromJson(responseBody).articles;
        result = await insertAndRecordFromDb(responseBody);
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
  void dispose(){
    _apiService.dispose();
  }

   Future<List<Articles>> insertAndRecordFromDb(responseBody) async{
    print("insertAndRecordFromDb");
    // final dao = Provider.of(context, listen: false).myDatabase.newsDao;
    final dao = myDatabase.newsDao;
    // final articles = News.fromJson(responseBody).articles;
    final articles = News.fromJson(responseBody).articles;
    print("Json形式からreadモデルの型へ" + articles[0].title);
    // Webから取得した記事リスト(Dartのモデルクラス: Articles) をDBのテーブルクラス(Articles)に変換してdbに登録と取得
    final articleRecords = await dao.insertAndRecordFromBd(articles.toArticleRecords(articles));
    print(articleRecords);
    //DBから取得したデータをモデルクラスに再変換し返す
    return articleRecords.toArticles(articleRecords);

   }


}
