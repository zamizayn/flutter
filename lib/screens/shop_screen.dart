import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/data/item.dart';
import 'package:haahooui/data/item_list.dart';
import 'package:haahooui/widgets/item_card.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  ItemList _itemList;
  List<Item> _items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Shop Name'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: <Widget>[
            Text(
              'Shop Name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/lulumall-cochin.jpg'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryColor,
                        offset: Offset(0.0, 3.0), //(x,y)
                        blurRadius: 20.0,
                      )
                    ],
                  ),
                  child: GridView.builder(
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: 3),
                    itemBuilder: (context, index) {
                      return ItemCard(
                        image: '',
                        shopName: _items[index].itemName,
                        price: _items[index].itemPrice,
                      );
                    },
                    scrollDirection: Axis.vertical,
                    itemCount: _items.length,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _itemList = ItemList();
    _items = _itemList.items;
  }
}
