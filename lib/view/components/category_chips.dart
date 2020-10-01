import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practicehome/data/category_list_data.dart';

class CategoryChips extends StatefulWidget {
  final ValueChanged onCategoryChanged;

  CategoryChips({this.onCategoryChanged});

  @override
  _CategoryChipsState createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  var value = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4.0,
      children: List<Widget>.generate(categories.length, (int index){
        return ChoiceChip(
          label: Text(categories[index].nameJp),
          selected: value == index,
          onSelected: (bool isSelected){
            setState(() {
              print(isSelected);//押されたらisSelectedはtrueになる
              value = isSelected ? index : 0;
              widget.onCategoryChanged(categories[index]);
            });
          },
        );
      }).toList(),
    );
  }
}

