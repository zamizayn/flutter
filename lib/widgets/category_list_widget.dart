import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/data/category.dart';
import 'package:haahooui/widgets/category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key key,
    @required this.datalist,
  }) : super(key: key);

  final List<Category> datalist;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,

            )
          ]),
      child: GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return SingleCategory(
            data: datalist[index].categoryName,

          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: datalist.length,
      ),
    );
  }
}
