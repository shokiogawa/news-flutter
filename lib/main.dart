import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:practicehome/models/db/database.dart';
import 'package:practicehome/presentation/controller/head_line_controller.dart';
import 'package:practicehome/presentation/controller/new_detail_controller.dart';
import 'package:practicehome/presentation/controller/news_list_controller.dart';
import 'file:///C:/Users/syoki/AndroidStudioProjects/practicehome/lib/view/screen/screen.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';


MyDatabase myDatabase;
void main() {
  myDatabase = MyDatabase();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<NewsListPageController, NewsListPageState>(
          create: (context) => NewsListPageController(),
        ),
        StateNotifierProvider<HeadLineController, HeadLineState>(
          create: (context) => HeadLineController(),
        ),
        StateNotifierProvider<NewDetailController, NewDetailState>(
            create: (context)  => NewDetailController(),
        ),
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


