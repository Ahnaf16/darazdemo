import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: FittedBox(
          child: Text(
            '             CHAT \n\n Under Development',
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
