// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: FittedBox(child: Text('items')),
    );
  }
}
