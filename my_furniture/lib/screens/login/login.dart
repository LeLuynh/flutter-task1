// ignore_for_file: avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_furniture/components/have_an_account.dart';
import 'package:my_furniture/components/login/round_input_field.dart';
import 'package:my_furniture/components/login/round_password.dart';
import 'package:my_furniture/constants.dart';
import 'package:my_furniture/screens/login/login_now.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  child: Center(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Image.asset('/images/login.png'),
                              const SizedBox(
                                height: 50,
                              ),
                              const Text(
                                'My Furniture',
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Login to find thousand best furniture',
                                style: TextStyle(
                                    color: kBlackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color: kWhiteColor),
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.email_outlined,
                                              color: Color(0xFFe3eaef),
                                            ),
                                            border: const OutlineInputBorder(),
                                            hintText: 'Email',
                                            hintStyle: const TextStyle(
                                                color: Color(0xFFe3eaef))),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        obscureText: isObscureText,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color: Color(0xFFe3eaef)),
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.lock_outline,
                                              color: Color(0xFFe3eaef),
                                            ),
                                            suffixIcon: IconButton(
                                              icon: const Icon(
                                                Icons.visibility_off_outlined,
                                                color: Color(0xFFe3eaef),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  isObscureText =
                                                      !isObscureText;
                                                });
                                              },
                                            ),
                                            border: const OutlineInputBorder(),
                                            hintText: 'Password',
                                            hintStyle: const TextStyle(
                                                color: Color(0xFFe3eaef))),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          height: 55,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: kPrimaryColor),
                                          child: const Center(
                                              child: Text(
                                            'Login',
                                            style: TextStyle(
                                                color: kWhiteColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ))),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Or login with',
                                        style: TextStyle(
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          height: 55,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: Center(
                                              child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset(
                                                '/images/IconGG.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                'Google',
                                                style: TextStyle(
                                                    color: Color(0xFF404040),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ))),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      AccountCheck(
                                        login: true,
                                        press: () {},
                                      )
                                    ],
                                  ))
                            ],
                          ))))))),
    );
  }
}
