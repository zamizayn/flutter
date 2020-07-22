import 'package:flutter/material.dart';
import 'package:haahooui/data/user.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(30, (index) {
          return new Card(
            elevation: 10.0,
            child: Container(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4eDRxoMAuNxDYAvarpLWHx8T25Q0trL3ebw&usqp=CAU",
              fit: BoxFit.cover,),
            ),
          );
        }),
      ),
    );
  }
}
