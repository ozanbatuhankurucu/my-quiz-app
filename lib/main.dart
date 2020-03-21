import 'package:flutter/material.dart';
import 'package:my_quiz_app/topiclist.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/topicList': (BuildContext context) => new TopicList(),
      },
      debugShowCheckedModeBanner: false,
      title: 'My Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xff1b262c),
        appBar: AppBar(
          title: Text("MQA"),
          centerTitle: true,
          backgroundColor: Color(0xff1b262c),
        ),
        body: Center(
          child: GestureDetector(
            onTap: ()  => Navigator.of(context).pushNamed('/topicList'),
            child: Container(
              height: 150,
              width: 150,
              child: Center(
                child: Text(
                  "Start",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                    fontSize: 22.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
          ),
        ),
      );
  }
}