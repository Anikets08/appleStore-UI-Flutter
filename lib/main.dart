import 'package:apple_store/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple Store',
      theme: ThemeData(
          fontFamily: GoogleFonts.nunito().fontFamily,
          cardColor: Color(0xffE4E4E4),
          accentColor: Color(0xff007AFF),
          primaryColorDark: Color(0xff3B3B3B)),
      home: Signin(),
    );
  }
}
