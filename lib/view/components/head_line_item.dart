import 'package:flutter/material.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/view/components/image_from_url.dart';

class HeadLineItem extends StatelessWidget {
  final Articles articles;
  final ValueChanged onArticle;

  HeadLineItem({this.articles, this.onArticle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: (){onArticle(articles);},
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageFromUrl(
                imageUrl: articles.urlToImage,
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 32,
              right: 32,
              child: Text(articles.title, style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
