import 'package:flutter/material.dart';
import 'package:my_furniture/constants.dart';

import 'login.dart';

class LoginNow extends StatefulWidget {
  const LoginNow({Key? key}) : super(key: key);

  @override
  _LoginNowState createState() => _LoginNowState();
}

class _LoginNowState extends State<LoginNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
                child: Image.asset("/images/loginNow.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Register Success",
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                margin: const EdgeInsets.only(top: 197),
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
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    "Login Now",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
