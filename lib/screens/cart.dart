import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:http/http.dart' as http;



class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}


class _CartState extends State<Cart> {
  List<String> data = new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchFive();
  }

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: index,
        onTap: (int index1){
          setState(() {
            index = index1;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Profile')

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              title: Text('Wallet')

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              title: Text('Edit')

          ),


        ],
        type: BottomNavigationBarType.fixed,
      ),
      appBar:
      AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Cart',style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Cart()
              ));
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Icon(Icons.shopping_cart)),
          ),

        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: CustomScrollView(
          slivers: <Widget>[

            SliverList(
              ///Use SliverChildListDelegate and provide a list
              ///of widgets if the count is limited
              ///
              ///Lazy building of list
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  /// To convert this infinite list to a list with "n" no of items,
                  /// uncomment the following line:
                  /// if (index > n) return null;
                  return listItem( data[index]);
                },
                childCount: data.length
                /// Set childCount to limit no.of items
                /// childCount: 100,
              ),
            )

          ],
        ),
      ),

    );
  }
  fetch() async {

    final response = await http.get('https://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        data.add(json.decode(response.body)['message']);

      });
    } else {
      throw Exception("Failed");
    }
  }

  fetchFive() {
    for (int i = 0; i < 10; i++) {
      fetch();
    }
  }
}


Widget listItem(String title) => Container(
  height: 100.0,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Image.network(title,fit: BoxFit.cover,width: 100,height: 100,),
        Row(
          children: <Widget>[

          ],
        )
      ],
    ),
  ),
);