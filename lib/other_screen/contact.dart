import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Card(
            child: Container(
              height: 500,
              width: 400,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
