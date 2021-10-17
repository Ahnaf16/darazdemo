// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                  // expandedHeight: 100,
                  // title: header('Lotto', Colors.black, 30),
                  leading: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/sliver_bg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
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
            body: TabBarView(
              children: [
                Categorys(),
                Items(),
              ],
            ),
          ),
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
