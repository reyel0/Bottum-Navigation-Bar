import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Card(
            child: Container(
              height: 500,
              width: 400,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
