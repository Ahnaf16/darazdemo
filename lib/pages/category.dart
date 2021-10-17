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
                items(
                    'images/item_1.webp', 'Lotto Washable Face Mask', '৳ 100'),
                items('images/item_2.webp',
                    'Lotto Sports Slippers for Men and Women', '৳ 490'),
                items('images/item_3.webp',
                    'Lotto Men\'s Sports T-Shirt With Vibrant ...', '৳ 390'),
                items('images/item_4.webp', 'Lotto Flip-Flop Sports Slipper',
                    '৳ 890'),
                items('images/item_5.webp', 'Rubber Sports Slipper For Men',
                    '৳ 490'),
              ],
            ),
          )
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(itemname),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Text(itemprize),
            )
          ],
        ),
      ),
    ),
  );
}
