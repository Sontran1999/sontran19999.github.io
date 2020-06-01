import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
                child:Text("Categories", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
            ),
            ListView.builder(
                itemCount: _categoryname.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text(_categoryname[index], style: TextStyle(fontSize: 20),),
                          Icon(Icons.arrow_forward_ios, size: 15,),
                      ],),
                      ),
                    ),

                  );
                })
          ],),
        ),
      ),
    );
  }
}
