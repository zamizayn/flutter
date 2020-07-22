import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/screens/loading.dart';
import 'package:haahooui/screens/shopdetail.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AllShops extends StatefulWidget {
  @override
  _AllShopsState createState() => _AllShopsState();
}

class _AllShopsState extends State<AllShops> {
  List<String> data = new List();
  ScrollController _scrollController = new ScrollController();
  bool loading = true;
  int index=0;

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchFive();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {

        fetchFive();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
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
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Shops"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(Icons.shopping_cart)),
        ],
      ),
      body:  ListView.builder(
              itemCount: data.length,
              controller: _scrollController,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            child: Image.network(
                              data[index],
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Shopdetail()));
                            },
                            child: Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Lulu HyperMarket ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Text(
                                      "Ernakulam , Kerala , 682025",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Text(
                                      "4.5*",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
    );
  }

  fetch() async {
    setState(() {
      loading=true;
    });
    final response = await http.get('https://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        data.add(json.decode(response.body)['message']);
        loading = false;
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
