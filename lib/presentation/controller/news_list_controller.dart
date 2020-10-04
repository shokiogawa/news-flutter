import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/infrastracture/repository/news_repository.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:state_notifier/state_notifier.dart';

part 'news_list_controller.freezed.dart';

@freezed
abstract class NewsListPageState with _$NewsListPageState {
  factory NewsListPageState({
    CategoryListData category,
    SearchType searchType,
    String keyword,
    bool loading,
    List<Articles> articles,
  }) = _NewsListPageState;
}

class NewsListPageController extends StateNotifier<NewsListPageState> {
  final NewsRepository newsRepository = NewsRepository();
  NewsListPageController() : super(NewsListPageState(category: categories[0], searchType: SearchType.CATEGORY ,loading: false, articles: []));


  Future<void> getNews({@required SearchType searchType, CategoryListData category, String keyword})
  async {
    //stateにview空のデータを格納
    state = state.copyWith(searchType: searchType, category: category, keyword: keyword, loading: true);
    print('category:${state.category.nameJp}///keyword:${state.keyword}');


    //repositoryの関数にデータを格納
    List<Articles> _article = await newsRepository.getNews(searchType: state.searchType, category: state.category, keyword: state.keyword);
    state = state.copyWith(articles: _article);
    print("記事${state.articles[0].title}");

    state = state.copyWith(loading: false);

  }

  @override
  void dispose() {
    newsRepository.dispose();
    super.dispose();
  }
}
