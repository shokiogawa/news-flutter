import 'package:flutter/material.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/presentation/controller/head_line_controller.dart';
import 'package:practicehome/view/components/head_line_item.dart';
import 'package:practicehome/view/screen/news_web_page_screen.dart';
import 'package:provider/provider.dart';

class HeadLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HeadLineController>(context, listen: false);
    final state = Provider.of<HeadLineState>(context, listen: true);
    if (!state.loading && state.articles.isEmpty) {
      print("最初のbuild");
      print(state.loading.toString());
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
        body: state.loading ?
        Center(child: CircularProgressIndicator())
            :Padding(
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

  Future<void> onRefresh(context) async{
    final controller = Provider.of<HeadLineController>(context, listen: false);
    print("headlineの更新");
    await controller.getNews(searchType: SearchType.HEAD_LINE);
  }

  Future<void> _openArticleNewPage(BuildContext context, Articles articles) async{
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => NewsWebPageScreen(
              articles: articles,
            )
        )
    );
    print(articles.url);

  }
}
