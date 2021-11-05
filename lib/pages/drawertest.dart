// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Drawertest extends StatelessWidget {
  const Drawertest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            )
          ],
        )),
      ),
    );
  }
}
