import 'package:flutter/material.dart';
import 'package:haahooui/data/shop.dart';
import 'package:haahooui/widgets/shop_widget.dart';

import '../constants.dart';

class ShopListWidget extends StatelessWidget {
  const ShopListWidget({
    Key key,
    @required this.shops,
  }) : super(key: key);

  final List<Shop> shops;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              offset: Offset(0.0, 3.0), //(x,y)
              blurRadius: 10.0,
            )
          ]),
      child: GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ShopCard(
            shopName: shops[index].shopName,
          );
        },
        itemCount: shops.length,
      ),
    );
  }
}
