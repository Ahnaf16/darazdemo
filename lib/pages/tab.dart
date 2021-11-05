// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'items.dart';
import 'category.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  pinned: false,
                  expandedHeight: 100,

                  leading: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  // flexibleSpace: FlexibleSpaceBar(
                  //   background: Image.asset(
                  //     'images/sliver_bg.jpg',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        child: alltext('Homepage', Colors.black, 20),
                      ),
                      Tab(
                        child: alltext('All items', Colors.black, 20),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Categorys(),
                Items(),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Header"),
            ),
            ListTile(
              title: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}

Widget alltext(
  String thetext,
  Color textcolor,
  double textsize,
) {
  return Text(
    thetext,
    style: TextStyle(
      color: textcolor,
      fontSize: textsize,
    ),
  );
}
