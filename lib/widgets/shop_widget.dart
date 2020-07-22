import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';

class ShopCard extends StatelessWidget {
  final String shopName;

  ShopCard({this.shopName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor,
                offset: Offset(0.0, 3.0), //(x,y)
                blurRadius: 10.0,
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: kPrimaryColor,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                shopName,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
