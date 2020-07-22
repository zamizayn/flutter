import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/data/category.dart';
import 'package:haahooui/data/category_list.dart';
import 'package:haahooui/data/shop.dart';
import 'package:haahooui/data/shop_list.dart';
import 'package:haahooui/widgets/category_list_widget.dart';
import 'package:haahooui/widgets/category_widget.dart';
import 'package:haahooui/widgets/navigation_widget.dart';
import 'package:haahooui/widgets/shop_list-widget.dart';
import 'package:haahooui/widgets/shop_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CategoryList categoryList;
  List<Category> datalist;
  ShopList shopList;
  List<Shop> shops;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Shops'),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Icon(Icons.shopping_cart)),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Icons.my_location))
          ],
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Flexible(
                    child: CategoryListWidget(datalist: datalist),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Shops',
                    style:TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: ShopListWidget(shops: shops),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    categoryList = CategoryList();
    shopList = ShopList();
    datalist = categoryList.categories;
    shops = shopList.shops;
  }
}
