import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/presentation/controller/news_list_controller.dart';
import 'package:practicehome/view/components/article_tile_description.dart';
import 'package:practicehome/view/components/image_from_url.dart';
import 'package:provider/provider.dart';

class ArticleTile extends StatelessWidget {
  final Articles articles;
  final ValueChanged onArticle;

  ArticleTile({this.articles, this.onArticle});

  @override
  Widget build(BuildContext context) {
    // final controller =
    // Provider.of<NewsListPageController>(context, listen: false);
    // final state = Provider.of<NewsListPageState>(context, listen: true);
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            onArticle(articles);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageFromUrl(imageUrl: articles.urlToImage,),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ArticleTileDescription(articles: articles,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
