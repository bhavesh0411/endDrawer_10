import 'package:flutter/material.dart';
import 'package:tab_bar/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
