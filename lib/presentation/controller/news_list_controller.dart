import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:state_notifier/state_notifier.dart';

part 'news_list_controller.freezed.dart';

@freezed
abstract class NewsListPageState with _$NewsListPageState {
  factory NewsListPageState({
    CategoryListData category,
    SearchType searchType,
    String keyword,
    bool loading,
  }) = _NewsListPageState;
}

class NewsListPageController extends StateNotifier<NewsListPageState> {
  NewsListPageController() : super(NewsListPageState(category: categories[0], searchType: SearchType.CATEGORY ,loading: false));


  void getNews({@required SearchType searchType, CategoryListData category, String keyword})
  {
    state = state.copyWith(searchType: searchType, category: category, keyword: keyword);
    if (state.keyword != null){
      print('カテゴリー:' + state.category.nameJp + 'キーワード'+state.keyword + state.searchType.toString());
    }else{
      print('カテゴリー:' + state.category.nameJp + state.searchType.toString());
    }

  }
}
