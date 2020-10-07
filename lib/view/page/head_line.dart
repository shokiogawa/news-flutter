import 'package:flutter/material.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/presentation/controller/head_line_controller.dart';
import 'package:practicehome/view/components/head_line_item.dart';
import 'package:provider/provider.dart';

class HeadLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HeadLineController>(context, listen: false);
    final state = Provider.of<HeadLineState>(context, listen: true);
    if (!state.loading && state.articles.isEmpty) {
      print("head");
      Future(() => controller.getNews(searchType: SearchType.HEAD_LINE));
    }
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          tooltip: "更新",
          onPressed: () {
            onRefresh(context);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: state.articles.length,
              itemBuilder: (context, int index) {
                return HeadLineItem(
                  articles: state.articles[index],
                  onArticle: (articles) {
                    _openArticleNewPage(context, articles);
                  },
                );
              }),
        ));
  }

  void onRefresh(context) {
    final controller = Provider.of<HeadLineController>(context, listen: false);
    print("headlineの更新");
    controller.getNews(searchType: SearchType.HEAD_LINE);
  }

  void _openArticleNewPage(BuildContext context, Articles articles) {
    print(articles.url);
  }
}
