import 'package:flutter/material.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/presentation/controller/news_list_controller.dart';
import 'package:practicehome/view/components/category_chips.dart';
import 'package:practicehome/view/components/search.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          tooltip: "更新",
          onPressed: () {
            onRefresh(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchBar(
                onSearch: (keyword) {
                  getNews(context, keyword);
                },
              ),
              CategoryChips(
                onCategoryChanged: (category) {
                  getCategoryNews(context, category);
                },
              ),
              Container(
                // child: Text(state.category.nameJp),
              ),
              Expanded(child: Center(child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }


  Future <void> onRefresh(BuildContext context) async{
    final controller = Provider.of<NewsListPageController>(context, listen: false);
    final state = Provider.of<NewsListPageState>(context, listen: false);
    print('更新が押された');
    await controller.getNews(
        searchType: state.searchType,
        category: state.category,
        keyword: state.keyword);
  }

  Future <void> getNews(context, keyword) async{
    final controller = Provider.of<NewsListPageController>(context, listen: false);
    print('$keyword が渡された');
    await controller.getNews(
        searchType: SearchType.KEYWORD,
        keyword: keyword,
        category: categories[0]);
  }

  Future<void> getCategoryNews(BuildContext context, category) async{
    final controller = Provider.of<NewsListPageController>(context, listen: false);
    print(category.nameJp);
    await controller.getNews(
        searchType: SearchType.CATEGORY, category: category);

  }
}
