import 'dart:js';
import 'package:flutter/src/material/dialog.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/theme.dart';
import 'dart:math'; //Random 클래스 사용에 필요


void main() {
  runApp(MaterialApp(home:AnimatedContainerPage()));
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage>{
  var _size = 1980.0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AnimatorContainer')),
        body: Center(
          child: GestureDetector(
            onTap: () {
              final random = Random(); // Random 클래스 사용 준비
              setState(() {
                //클릭할 때 마다 100.0~299.0 사이의 실수를 랜덤하게 얻기
                _size = random.nextInt(200).toDouble() + 100;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _size,
              height: _size,
              child: Image.asset('assets/newyork.jpg'),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}







