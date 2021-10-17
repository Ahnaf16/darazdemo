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
  'images/item_6.webp',
  'images/item_7.webp',
  'images/item_8.webp',
  'images/item_9.webp',
  'images/item_10.webp',
  'images/item_11.webp',
  'images/item_12.webp',
];

var itemname = [
  'Lotto Washable Face Mask',
  'Lotto Sports Slippers for ...',
  'Lotto Men\'s Sports T-Shirt ...',
  'Lotto Flip-Flop Sports Slipper',
  'Rubber Sports Slipper For ...',
  'Lotto Men\'s Sports Lifestyle ...',
  'LOTTO Comfortable Running ...',
  'LOTTO SP 450 Comfortable ...',
  'Lotto Men\'s Sports Lifestyle ...',
  'LOTTO SP 450 Comfortable Runn ...',
  'Lotto Men\'s Sports Lifestyle ...',
  'Lotto Men\'s Sports Lifestyle ...',
];

var itemprize = [
  '৳ 100',
  '৳ 490',
  '৳ 390',
  '৳ 890',
  '৳ 490',
  '৳ 3490',
  '৳ 2290',
  '৳ 2290',
  '৳ 1690',
  '৳ 2490',
  '৳ 1890',
  '৳ 2990',
];

var rating = [
  'images/4star.png',
  'images/5star.png',
  'images/4star.png',
  'images/5star.png',
  'images/4star.png',
  'images/4star.png',
  'images/5star.png',
  'images/5star.png',
  'images/4star.png',
  'images/3star.png',
  'images/5star.png',
  'images/5star.png',
];
