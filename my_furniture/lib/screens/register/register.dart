import 'package:flutter/material.dart';
import 'package:my_furniture/components/have_an_account.dart';
import 'package:my_furniture/components/register/register_input.dart';
import 'package:my_furniture/constants.dart';
import 'package:my_furniture/screens/login/login.dart';
import 'package:my_furniture/screens/login/login_now.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBackground,
          elevation: 0,
          toolbarHeight: 40,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Icon(
                  Icons.arrow_back,
                  color: kBlackColor,
                ),
              )
              // add custom icons also
              ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 3, 113, 2),
                  child: Text(
                    "Create My Furniture",
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 62),
                  child: Text(
                    "Create account to find best Furniture",
                    style: TextStyle(
                        color: kBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                  child: Image.asset(
                    "/images/register.png",
                  ),
                ),
                RegisterInput(
                  hintText: "Full Name",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                RegisterInput(
                  hintText: "Email",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                RegisterInput(
                  hintText: "Phone Number",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                RegisterInput(
                  hintText: "Password",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                RegisterInput(
                  hintText: "Retype Password",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(top: 15.0, bottom: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 55),
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginNow()));
                    },
                    child: const Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                AccountCheck(
                  login: false,
                  press: () {},
                )
              ],
            ),
          ),
        ));
  }
}
