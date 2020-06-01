import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListManga extends StatefulWidget {
  @override
  _ListMangaState createState() => _ListMangaState();
}

class _ListMangaState extends State<ListManga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context,index){
                return Container(
                  child: Column(children: <Widget>[
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(children: <Widget>[
                        ClipRect(
//                          borderRadius: BorderRadius.circular(8.0),
                            child: Icon(Icons.account_box,
                            size: 50,),
                      ),

                        Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text("rate")
                        )
                      ],)
                    ),
                  ],),
                );
              })
        )
      ),
    );
  }
}
