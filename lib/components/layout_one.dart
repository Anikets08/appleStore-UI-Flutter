import 'package:apple_store/components/card.dart';
import 'package:flutter/material.dart';

class LayoutOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return BuyCard();
        },
      ),
    );
  }
}
