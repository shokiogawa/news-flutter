import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged onSearch;
  final TextEditingController _searchTextField = TextEditingController();

  SearchBar({this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(const Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          onSubmitted: onSearch,
          maxLines: 1,
          controller: _searchTextField,
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: '検索ワードを入力してください',
            border: InputBorder.none,
          )
    ),
      )
    );
  }

}
