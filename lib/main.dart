

import 'package:bottom_navigation_bar/other_screen/call.dart';
import 'package:bottom_navigation_bar/other_screen/home.dart';
import 'package:bottom_navigation_bar/other_screen/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'other_screen/contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;
  final pages=[
    Home(),
    Call(),
    Message(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text('Bottom Navigation'),),backgroundColor: Colors.deepOrange,
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        backgroundColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        selectedFontSize: 13,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.orange,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            title: Text('Contact'),
          ),
        ],
        onTap: (index){setState(() {
_currentindex=index;
        });},
      ),
      body: pages[_currentindex],
    );
  }
}
