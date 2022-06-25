import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Card(),
    ));

class Card extends StatefulWidget {
  _StateWid createState() => _StateWid();
}

class _StateWid extends State<Card> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("My Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              backgroundImage: AssetImage('asset/MyPhoto.jpg'),
              radius: 40,
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text("NAME",
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 5),
            Text("Amar K",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Text("Current Level",
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 5),
            Text("$level",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Row(children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10),
              Text("amarkhamkar6@gmail.com", style: TextStyle(color: Colors.grey[400]))
            ])
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
    );
  }
}
