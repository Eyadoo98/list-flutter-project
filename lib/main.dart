import 'package:flutter/material.dart';
import 'package:list/messenger.dart';
import 'package:list/user_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Messenger(),
      home: UsersScreen(),
    );
  }
}

