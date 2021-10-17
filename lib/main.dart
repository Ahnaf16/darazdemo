// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'items.dart';
import 'shops.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Daraz'),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.shop),
                  ),
                  Tab(
                    child: Icon(Icons.shop),
                  ),
                ],
              ),
            ),
            TabBarView(
              children: [
                Items(),
                Shops(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
