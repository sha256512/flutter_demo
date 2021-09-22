import 'dart:js';
import 'package:flutter/src/material/dialog.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/theme.dart';


void main() {
  runApp(MaterialApp(home:HeroPage()));
}


class HeroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hero'),
          ),
          body: Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>HeroDetailPage()),
                );
              },
              child: Hero(
                tag: 'image', // 여기서 작성한 태그와 두번째 페이지의 태그가 동일해야 함
                child: Image.asset(
                  'assets/newyork.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          )
      )
    );
   
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/newyork.jpg'),
      ),
    );
  }
}




