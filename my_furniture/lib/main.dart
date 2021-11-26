import 'package:flutter/material.dart';
import 'package:my_furniture/constants.dart';
import 'package:my_furniture/screens/login/login_now.dart';
import 'package:my_furniture/screens/my_furniture/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
      ),
      home: const Page1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
