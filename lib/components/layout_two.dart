import 'package:apple_store/components/small_buy.dart';
import 'package:flutter/material.dart';

class LayoutTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8, crossAxisSpacing: 15),
        itemCount: 20,
        itemBuilder: (context, index) {
          return SmallBuyCard();
        },
      ),
    );
  }
}
