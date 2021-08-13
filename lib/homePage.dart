import 'package:flutter/material.dart';
import 'package:tab_bar/snackBar_widget.dart';
import 'package:tab_bar/navigator_page.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Drawer App'),
          backgroundColor: Colors.lightBlue,
        ),
        body: SnackBarDemo(), // for snackBar, has nothing to with drawer
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                arrowColor: Colors.lightBlue,
                accountName: Text('I am Iron Man'),
                accountEmail: Text('hulk2000@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                      // Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple : Colors.lightBlue, //* code for view in iOS and android specific
                  child: Text(
                    'H',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text('Why so serious?', style: TextStyle(color: Colors.green),),
                trailing: Icon(Icons.child_care, color: Colors.green,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NavigationPage()));
                },
              ),
              ListTile(
                title: Text('I am Inevitable!!', style: TextStyle(color: Colors.purple),),
                trailing: Icon(Icons.timelapse, color: Colors.purple,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NavigationPage()));
                },
              )
            ],
          ),
        ),
      );
  }
}