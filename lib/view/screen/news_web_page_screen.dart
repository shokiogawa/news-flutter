import 'package:flutter/material.dart';
import 'package:practicehome/models/model/news_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebPageScreen extends StatelessWidget {
  Articles articles;

  NewsWebPageScreen({this.articles});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(articles.title),
        ),
        body:Center(
          child: Container(
            child: Text('Still building'),
          ),
        )
        // WebView(
        //   initialUrl: articles.url,
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
      ),
    );
  }
}
