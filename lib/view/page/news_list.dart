import 'package:flutter/material.dart';
import 'package:practicehome/view/components/category_chips.dart';
import 'package:practicehome/view/components/search.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          tooltip: "更新",
          onPressed: (){
            onRefresh(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchBar(
                onSearch:(keyword){
                getNews(context, keyword);
              },),
              CategoryChips(
                onCategoryChanged: (category){
                  getCategoryNews(context, category);
                },
              ),
              Expanded(
                  child: Center(
                      child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }

  void onRefresh(BuildContext context) {
    print('更新が押された');
  }

  void getNews(context, keyword) {
    print('$keyword が渡された');
  }

  void getCategoryNews(BuildContext context, category) {
    print(category.nameJp);
  }
}
