import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';


class ItemCard extends StatefulWidget {
  final String image;
  final String shopName;
  final String price;

  @override
  _ItemCardState createState() => _ItemCardState();

  ItemCard({this.image, this.shopName, this.price});
}

class _ItemCardState extends State<ItemCard> {
  int _itemCount = 0;

  @override
  // TODO: implement widget
  ItemCard get widget => super.widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor,
            offset: Offset(0.0, 3.0), //(x,y)
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CircleAvatar(
                backgroundColor: kPrimaryColor,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Item Name: '),
                  Flexible(child: Text(widget.shopName)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Price'),
                  Text(widget.price),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(
                        () {
                          if (_itemCount != 0) _itemCount = _itemCount - 1;
                        },
                      );
                    },
                    child: Icon(
                      Icons.remove,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    _itemCount.toString(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(
                        () {
                          _itemCount = _itemCount + 1;
                        },
                      );
                    },
                    child: Icon(
                      Icons.add,
                      color: kPrimaryColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
