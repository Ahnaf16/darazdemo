// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Categorys extends StatelessWidget {
  const Categorys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          banars('images/banar1.jpeg'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                items('images/item_1.webp', 'Lotto Washable Face Mask', '৳ 100',
                    'images/4star.png'),
                items('images/item_2.webp', 'Lotto Sports Slippers for ...',
                    '৳ 490', 'images/5star.png'),
                items('images/item_3.webp', 'Lotto Men\'s Sports T-Shirt ...',
                    '৳ 390', 'images/4star.png'),
                items('images/item_4.webp', 'Lotto Flip-Flop Sports Slipper',
                    '৳ 890', 'images/5star.png'),
                items('images/item_5.webp', 'Rubber Sports Slipper For ...',
                    '৳ 490', 'images/4star.png'),
              ],
            ),
          ),
          banars('images/banar4.jpeg'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                items('images/item_6.webp', 'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 3490', 'images/4star.png'),
                items('images/item_7.webp', 'LOTTO Comfortable Running ...',
                    '৳ 2290', 'images/5star.png'),
                items('images/item_8.webp', 'LOTTO SP 450 Comfortable ...',
                    '৳ 2290', 'images/5star.png'),
                items('images/item_9.webp', 'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 1690', 'images/4star.png'),
                items(
                    'images/item_10.webp',
                    'LOTTO SP 450 Comfortable Runn ...',
                    '৳ 2490',
                    'images/3star.png'),
                items(
                    'images/item_10.webp',
                    'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 1890',
                    'images/5star.png'),
                items(
                    'images/item_10.webp',
                    'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 2990',
                    'images/5star.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget banars(
  String banarnaame,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(banarnaame)),
    ),
  );
}

Widget items(
  String imagename,
  String itemname,
  String itemprize,
  String rating,
) {
  return LimitedBox(
    maxWidth: 200,
    maxHeight: 300,
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagename,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(itemname),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  itemprize,
                  style: TextStyle(color: Colors.orange, fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Image.asset(
                  rating,
                  width: 70,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
