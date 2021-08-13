import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigated Route/Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text('All That For A Drop Of Blood!!', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20,),),),
    );
  }
}