import 'package:apple_store/expanded_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SmallBuyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: Get.width * 0.4,
        decoration: BoxDecoration(
          color: Get.theme.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                "assets/laptop.png",
                width: 100,
              ),
              SizedBox(
                width: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'New ',
                  style: TextStyle(
                      color: Get.theme.accentColor,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Macbook Air M1',
                        style: TextStyle(color: Get.theme.primaryColorDark)),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(r"From $ 1000"),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(ExpandedScreen());
                },
                child: Container(
                  height: 35,
                  width: Get.width * 0.3,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColorDark,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Choose",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
