import 'package:apple_store/components/card.dart';
import 'package:apple_store/components/layout_one.dart';
import 'package:apple_store/components/layout_two.dart';
import 'package:apple_store/components/small_buy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = ["Macbook", "IPad", "IPhone", "Watch"];
  int Mainindex = 0;
  bool layoutVar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Hey Aniket",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Center(
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  top: 10,
                  child: CircleAvatar(
                    backgroundColor: Get.theme.accentColor,
                    radius: 10,
                    child: Text(
                      "1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/buy.png",
                  width: 80,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                height: 50,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Mainindex = index;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Mainindex == index
                                  ? Get.theme.primaryColorDark
                                  : Get.theme.cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            items[index],
                            style: TextStyle(
                              color: Mainindex == index
                                  ? Colors.white
                                  : Get.theme.primaryColorDark,
                            ),
                          )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    layoutVar = !layoutVar;
                  });
                },
                child: Row(
                  children: <Widget>[
                    GestureDetector(child: Image.asset("assets/category.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Layout"),
                  ],
                ),
              ),
              layoutVar ? LayoutOne() : LayoutTwo()
            ],
          ),
        ),
      ),
    );
  }
}
