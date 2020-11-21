import 'package:flutter/material.dart';
import 'package:practicehome/view/page/about.dart';
import 'package:practicehome/view/page/head_line.dart';
import 'package:practicehome/view/page/news_list.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

 class _ScreenState extends State<Screen> {
  int _currentIndex = 0;
  final page = [HeadLine(), NewsList(), TabPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,//activeをつける
        items: const[
          BottomNavigationBarItem(
            icon: const Icon(Icons.highlight),
            title:const Text('トップニュース'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            title: const Text('ニュースリスト'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.info),
            title: const Text('タブページ')
          )
        ],
        onTap: (index){
          //tapされたところの値を代入
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}
