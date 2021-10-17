// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Shops extends StatelessWidget {
  const Shops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: FittedBox(child: Text('shops')),
    );
  }
}
