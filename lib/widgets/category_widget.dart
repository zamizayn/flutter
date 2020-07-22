import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';

class SingleCategory extends StatelessWidget {
  final String data;

  SingleCategory({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU"),
              ),
              Text(
                data,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
