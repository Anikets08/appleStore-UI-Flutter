import 'package:apple_store/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
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
                      "Create Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("The best place to buy Apple is Apple")
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
                        "Name",
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
                        "Phone",
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
            Container(
              height: 60,
              width: Get.width * 0.85,
              decoration: BoxDecoration(
                color: Get.theme.primaryColorDark,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account? "),
                GestureDetector(
                  onTap: () {
                    Get.to(Signin());
                  },
                  child: Text(
                    "Login here",
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
