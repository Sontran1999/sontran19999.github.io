import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangaapp/screen/page/ListManga.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }
  List<String> _categoryname = [
    'Blackpink',
    'Fan Art',
    'Jennie',
    'Jisoo',
    'Lisa',
    'live',
    'Recent',
    'Rose'
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          Container(
            color: Colors.blue,
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(
              tabs: [
                Tab(text: "Most popular"),
                Tab(text: "Recent Updated"),
                Tab(text: "Completed"),
              ],
              controller: _tabController,
            ),
          ),
          Expanded(
            child:TabBarView(
            children: [
              ListManga(),
              ListManga(),
              ListManga(),
            ],
            controller: _tabController,
          ),)
        ],
          

        ),
      
          
         
      
//        child: SingleChildScrollView(
//            child: GridView.builder(
//                shrinkWrap: true,
//                physics: BouncingScrollPhysics(),
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 3),
//                itemBuilder: (context, index){
//                  return Container(
//                    child: Text(_categoryname[index]),
//                  );
//                }
//            )
//        ),
      )

    );
  }
}
