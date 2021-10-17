// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: itemimage.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      itemimage[index],
                      height: 120,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Text(itemname[index]),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                      child: Text(
                        itemprize[index],
                        style: TextStyle(color: Colors.orange, fontSize: 22),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                      child: Image.asset(
                        rating[index],
                        width: 70,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

var itemimage = [
  'images/item_1.webp',
  'images/item_2.webp',
  'images/item_3.webp',
  'images/item_4.webp',
  'images/item_5.webp',
];

var itemname = [
  'Lotto Washable Face Mask',
  'Lotto Sports Slippers for ...',
  'Lotto Men\'s Sports T-Shirt ...',
  'Lotto Flip-Flop Sports Slipper',
  'Rubber Sports Slipper For ...',
];

var itemprize = [
  '৳ 100',
  '৳ 490',
  '৳ 390',
  '৳ 890',
  '৳ 490',
];

var rating = [
  'images/4star.png',
  'images/5star.png',
  'images/4star.png',
  'images/5star.png',
  'images/4star.png'
];
