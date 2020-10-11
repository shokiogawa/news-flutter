import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/infrastracture/repository/news_repository.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:state_notifier/state_notifier.dart';

part 'head_line_controller.freezed.dart';

@freezed
abstract class HeadLineState with _$HeadLineState {
  factory HeadLineState({
    SearchType searchType,
    bool loading,
    List<Articles> articles,
}) = _HeadLineState;
}

class HeadLineController extends StateNotifier<HeadLineState>{
  NewsRepository _newsRepository = NewsRepository();
  HeadLineController() :super(HeadLineState( searchType: SearchType.CATEGORY, loading: false, articles: []));

  @override
  void dispose() {
    _newsRepository.dispose();
    super.dispose();
  }

  Future<void> getNews({@required SearchType searchType}) async {
    state = state.copyWith(searchType: searchType);
    state = state.copyWith(loading: true);
    print("コントローラーのgetNewsメソッド");
    print(state.loading);
    List<Articles> _articles =[];

    _articles = await _newsRepository.getNews(searchType: searchType);
    state = state.copyWith(articles: _articles);

    state = state.copyWith(loading: false);
    print("repositoryからコントローラーに");
    print(state.loading);
  }
}