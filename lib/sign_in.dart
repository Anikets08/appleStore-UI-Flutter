import 'package:apple_store/home_screen.dart';
import 'package:apple_store/main.dart';
import 'package:apple_store/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/apple.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("to the Apple store")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 60,
                      width: Get.width * 0.85,
                      decoration: BoxDecoration(
                        color: Get.theme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 18.5),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 60,
                      width: Get.width * 0.85,
                      decoration: BoxDecoration(
                        color: Get.theme.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 18.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(HomeScreen());
              },
              child: Container(
                height: 60,
                width: Get.width * 0.85,
                decoration: BoxDecoration(
                  color: Get.theme.primaryColorDark,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account? "),
                GestureDetector(
                  onTap: () {
                    Get.to(SignUp());
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
