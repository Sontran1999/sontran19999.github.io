import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangaapp/screen/page/CategoryPage.dart';
import 'package:mangaapp/screen/page/HomePage.dart';
import 'package:mangaapp/screen/page/MorePage.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  @override

  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onPageChanged(int value) {
    setState(() {
     _selectedIndex = value;
    });
  }
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CategoryPage(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Manga Reader"),
        actions: <Widget>[
          Icon(Icons.search),
        ],
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: Icon(Icons.public),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        )

     ),
      body: Center(
      child:  _widgetOptions.elementAt(_selectedIndex),
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onPageChanged,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Text("Select sever", textAlign: TextAlign.center,),
              ),
              decoration: BoxDecoration(color: Colors.blue,),
            ),
          ],

        ),
      ),
    );
  }
  void navigationTapped(int value) {
    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
