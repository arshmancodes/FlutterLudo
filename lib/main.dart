import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.red,
      ),
      body: myApp(),
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
            title: Text('Account Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Add Info'),
          ),
        ],
      ),
    ),
  ),
  );
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  int leftdice = 2;
  int rightdice = 3;
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftdice.png'),
              onPressed: (){
                setState(() {
                  leftdice = Random().nextInt(5) +1;
                  rightdice = Random().nextInt(5) +1;
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightdice.png'),
              onPressed: (){
                setState(() {
                  rightdice = Random().nextInt(5) +1;
                  leftdice = Random().nextInt(5) +1;
                });
              },
            ),
          ),
        ],
      )
    );
  }
}

