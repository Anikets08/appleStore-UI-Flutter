import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedScreen extends StatefulWidget {
  @override
  _ExpandedScreenState createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  bool isFav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/laptop.png",
                width: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(r"From $1000",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ships In"),
                      Text("1 - 2 Weeks"),
                      Text("Free Delivery"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: Get.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xffC4C4C4),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffF0E0D3),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffE0E2E1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Get.theme.cardColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Apple M1 chip with 8‑core CPU, 7‑core GPU\n and 16‑core Neural Engine",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("8GB unified memory \n"
                  "256GB SSD storage¹ \n"
                  "Retina display with True Tone \n"
                  "Magic Keyboard \n"
                  "Touch ID \n"
                  "Force Touch trackpad \n"
                  "Two Thunderbolt / USB 4 ports"),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: Get.width * 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Get.theme.primaryColorDark,
                    ),
                    child: Center(
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    child: CircleAvatar(
                      radius: 30,
                      child:
                          Icon(isFav ? Icons.favorite_border : Icons.favorite),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
