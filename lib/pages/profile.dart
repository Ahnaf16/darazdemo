import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: FittedBox(
          child: Text(
            '          PROFILE \n\n Under Development',
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
