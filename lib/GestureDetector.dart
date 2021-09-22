import 'dart:js';
import 'package:flutter/src/material/dialog.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/theme.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio / RadiolistTile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              print('GestureDetector 클릭!!');
            },
            child: Text('클릭 Me!!'),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: (){
              print('Inkwell 클릭!!');
            },
            child: Text('클릭 Me!!'),
          )
        ],
    )
    );
  }
}
