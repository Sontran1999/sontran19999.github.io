
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Column(children: <Widget>[
            Center(
                child: Container(
                  width: 380,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.history),
                        title: Text("History"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),

                      ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text("Favorite"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),

                      ListTile(
                        leading: Icon(Icons.arrow_downward),
                        title: Text("Download"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      )
                    ],),
                  ),
                ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Container(
                  width: 380,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.dvr),
                      title: Text("Feedback"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                )
              ),
            )
          ],),
        ),
    );
  }
}
