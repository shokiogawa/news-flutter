import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:practicehome/data/category_list_data.dart';
import 'package:practicehome/data/search_type.dart';
import 'package:practicehome/presentation/controller/news_list_controller.dart';
import 'package:provider/provider.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: DefaultTabController(
        length: categories.length,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("DMM.com"),
              bottom: TabBar(
                tabs: categories.map((category) => Text(category.nameJp)).toList(),
                isScrollable: true,
              ),
            ),
            body: TabBarView(
              children: categories.map((category) => ActressListPage()).toList()
            )),
      ),
    );
  }
}


class ActressListPage extends StatefulWidget {

  @override
  _ActressListPageState createState() => _ActressListPageState();
}

class _ActressListPageState extends State<ActressListPage> {
  Future<void> _controller;
  @override
  void initState(){
    super.initState();
    _controller = Provider.of<NewsListPageController>(context, listen: false)
        .getNews(searchType: SearchType.CATEGORY, category: categories[0]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder<void>(
      future: _controller,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot){
        return ActressList();
      },
    ));
  }
}


class ActressList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 200,
            child: SwitchListTile(
              title:Text("並び順逆"),
              value: false,
              onChanged:(bool value){
                // controller.changeSwitchState(sort);
                // actressController.changeSwitchState(sortList);
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 10),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ActressCard();
                }),
          ),
        ],
      ),
    );
  }
}

class ActressCard extends StatelessWidget {
  // final HumanReadModel actress;
  //
  // ActressCard(this.actress);

  @override
  Widget build(BuildContext context) {
    // final stateActress = Provider.of<ActressState>(context, listen: true).actress[index];
    return Card(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Text("test"),
            ),
          )
        ],
      ),
    );
  }
}
