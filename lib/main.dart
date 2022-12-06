import 'package:ccappdev/cardspage.dart';
import 'package:ccappdev/practicepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  int _currentindex = 0;
  final List<Widget> _children = [
    cardspage(),
    practicepage()
  ];
  void onTappedBar (int index){
    setState((){
      _currentindex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
              'Flash Cards',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontSize: 20.0,
            letterSpacing: 2
          ),),
          centerTitle: true,
      ),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        backgroundColor: Colors.black38,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Colors.white),
              label: 'Cards',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward_ios,
              color: Colors.white),
              label: 'Practice'
          )
        ],
      ),


      ),
    );

  }
  }