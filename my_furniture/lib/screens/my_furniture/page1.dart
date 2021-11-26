import 'package:flutter/material.dart';
import 'package:my_furniture/constants.dart';
import 'package:my_furniture/screens/login/login.dart';
import 'package:my_furniture/screens/my_furniture/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        // actions: const <Widget>[
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 40, top: 30),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ))),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Image.asset(
                "/images/picture1.png",
              ),
            ),
            const Text(
              "My Furniture",
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              "Your perfect interior design",
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              margin: const EdgeInsets.only(top: 176),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page2()));
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
