import 'package:flutter/material.dart';
import 'package:practicehome/models/model/news_model.dart';

class ArticleTileDescription extends StatelessWidget {
  final Articles articles;
  ArticleTileDescription({this.articles});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(articles.title, style: textTheme.subtitle1.copyWith(
          fontWeight: FontWeight.bold
        ),),
        Text(articles.publishedAt, style: textTheme.overline.copyWith(
          fontStyle: FontStyle.italic
        )),
        Text(articles.description, style: textTheme.bodyText1.copyWith(
        )),
      ],
    );
  }
}
