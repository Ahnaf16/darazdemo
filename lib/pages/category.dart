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
                    'images/item_11.webp',
                    'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 1890',
                    'images/5star.png'),
                items(
                    'images/item_12.webp',
                    'Lotto Men\'s Sports Lifestyle ...',
                    '৳ 2990',
                    'images/5star.png'),
              ],
            ),
          ),
          banars('images/banar3.jpeg'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                items(
                    'images/item_13.webp',
                    'Lotto Men\'s Sports T-Shirt With ...',
                    '৳ 440',
                    'images/5star.png'),
                items(
                    'images/item_3.webp',
                    'Lotto Men\'s Sports T-Shirt With ...',
                    '৳ 390',
                    'images/5star.png'),
                items(
                    'images/item_14.webp',
                    'Lotto Men\'s Sports T-Shirt With ...',
                    '৳ 440',
                    'images/5star.png'),
                items(
                    'images/item_15.webp',
                    'Lotto Men\'s Sports T-Shirt With ...',
                    '৳ 390',
                    'images/4star.png'),
                items(
                    'images/item_16.webp',
                    'Lotto Men\'s Sports T-Shirt With ...',
                    '৳ 440',
                    'images/4star.png'),
              ],
            ),
          ),
          banars('images/banar5.jpeg'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                items('images/item_18.webp', 'Long Sleeve Cotton Casual ...',
                    '৳ 890', 'images/4star.png'),
                items(
                    'images/item_19.webp',
                    'Long Sleeve Cotton Casual Shirt ...',
                    '৳ 890',
                    'images/5star.png'),
                items(
                    'images/item_20.webp',
                    'Dark Blue Jeans Pants for Men ...',
                    '৳ 1590',
                    'images/5star.png'),
                items(
                    'images/item_21.webp',
                    'Blue Jeans Pants for Men, Express ...',
                    '৳ 1190',
                    'images/4star.png'),
                items(
                    'images/item_22.webp',
                    'Light Blue Jeans Pants for Men ...',
                    '৳ 1190',
                    'images/5star.png'),
                items(
                    'images/item_29.webp',
                    'Exclusive Jeans Pants for Men with Fast...',
                    '৳ 2490',
                    'images/2star.png'),
              ],
            ),
          ),
          banars('images/banar6.jpeg'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                items(
                    'images/item_23.webp',
                    'Lotto Cotton Polo-Shirt For Men Blue ',
                    '৳ 1,290',
                    'images/5star.png'),
                items('images/item_24.webp', 'Lotto Sports Polo-Shirt For Men',
                    '৳ 1,290', 'images/3star.png'),
                items('images/item_25.webp', 'Lotto Sports Polo-Shirt For Men',
                    '৳ 2290', 'images/5star.png'),
                items('images/item_26.webp', 'Lotto Sports Polo-Shirt For Men',
                    '৳ 1,290', 'images/4star.png'),
                items('images/item_28.webp', 'Lotto Cotton Polo-Shirt For Men',
                    '৳ 1,390', 'images/4star.png'),
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
                  style: const TextStyle(color: Colors.orange, fontSize: 22),
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
