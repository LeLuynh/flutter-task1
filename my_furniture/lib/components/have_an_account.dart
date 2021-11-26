import 'package:flutter/material.dart';
import 'package:my_furniture/constants.dart';
import 'package:my_furniture/screens/login/login.dart';
import 'package:my_furniture/screens/register/register.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            login ? "Don't have an account ?" : "Have an account ?",
            style: const TextStyle(
                fontSize: 8, fontWeight: FontWeight.w400, color: kBlackColor),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        login ? const Register() : const Login()));
          },
          child: Text(
            login ? "Sign Up" : "Login Now",
            style: const TextStyle(
              color: kBlueColor,
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
