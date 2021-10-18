import 'package:flutter/material.dart';

import 'tab.dart';
import 'chat.dart';
import 'profile.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mytheme.lighttheme,
      darkTheme: Mytheme.darktheme,
      debugShowCheckedModeBanner: false,
      title: 'Daraz Demo',
      home: const Navbars(),
    );
  }
}

class Navbars extends StatefulWidget {
  const Navbars({Key? key}) : super(key: key);

  @override
  _NavbarsState createState() => _NavbarsState();
}

class _NavbarsState extends State<Navbars> {
  var curentindex = 0;
  final page = [
    const Tabs(),
    const Profile(),
    const Chats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[curentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.format_list_bulleted),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.storefront),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.question_answer),
          ),
        ],
        currentIndex: curentindex,
        onTap: (index) {
          setState(() {
            curentindex = index;
          });
        },
      ),
    );
  }
}

class Mytheme {
  static final lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(secondary: Colors.orange),
      indicatorColor: Colors.deepOrange);

  static final darktheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[900],
      colorScheme: const ColorScheme.dark(secondary: Colors.orangeAccent),
      indicatorColor: Colors.deepOrange);
}
