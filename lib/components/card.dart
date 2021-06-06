import 'package:apple_store/expanded_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyCard extends StatelessWidget {
  const BuyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 300,
        width: Get.width * 0.9,
        decoration: BoxDecoration(
          color: Get.theme.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/laptop.png"),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffC4C4C4),
                        radius: 15,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffF0E0D3),
                        radius: 15,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ExpandedScreen());
              },
              child: Container(
                height: 50,
                width: Get.width * 0.65,
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
                      fontSize: 21),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
