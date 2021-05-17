
import 'package:flutter/material.dart';
import 'dart:math';
main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Fortune(),
    );
  }
}
class Fortune extends StatefulWidget {
  @override
  _FortuneState createState() => _FortuneState();
}

class _FortuneState extends State<Fortune> {
  int imgIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 
          "Fortune Telling Magic Ball",
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  imgIndex=randomIndex();
                });
              },
              child:  Image.asset("images/ans$imgIndex.png"),
            )
            )
            ),
      ),
    );
  }
}
int randomIndex(){
  return Random().nextInt(5)+1;
}