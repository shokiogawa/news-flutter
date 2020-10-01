import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:practicehome/presentation/controller/news_list_controller.dart';
import 'package:practicehome/view/screen.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<NewsListPageController, NewsListPageState>(
          create: (context) => NewsListPageController(),
        )
      ],
      child: MaterialApp(
        title: 'Practice_Frutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Screen(),

      ),
    );
  }
}


