import 'package:flutter/material.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:practicehome/view/components/image_from_url.dart';

class NewDetailPage extends StatelessWidget {
  final Articles articles;
  NewDetailPage(this.articles);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.title),
      ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  child: ImageFromUrl(
                      imageUrl: articles.urlToImage
                  ),
                ),
              ),
              Text(articles.publishedAt),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(articles.title, style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic
                ),),
              ),
              IconButton(icon: Icon(Icons.favorite, color: Colors.black, size: 40,),
                  onPressed:(){} )
            ],
          ),
        )
    );
  }
}
