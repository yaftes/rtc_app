import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rtc_app/components/co_button.dart';
import 'package:rtc_app/components/co_textfield.dart';
import 'package:rtc_app/pages/home.dart';

class Login extends StatelessWidget {
  final void Function()? onTap;
  Login({super.key, required this.onTap});

  final TextEditingController usrnameCo = TextEditingController();
  final TextEditingController passCo = TextEditingController();

  void login(BuildContext context) {
    
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    // Implement your login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.cyan,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      height: 220,
                      child: Image.asset("assets/pro.png")),
                    
                    Text(
                      "RTC APP",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15),
                    CoTextfield(
                      controller: usrnameCo,
                      hintText: 'Username',
                      obscureText: false,
                    ),
                    SizedBox(height: 20.0),
                    CoTextfield(
                      controller: passCo,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot Password?"),
                      ],
                    ),
                    SizedBox(height: 5,),
                    CoButton(
                      text: "Login",
                      onTap: () => login(context),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?"),
                        SizedBox(width: 15),
                        GestureDetector(
                          onTap: onTap,
                          child: Text(
                            "Register here",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
