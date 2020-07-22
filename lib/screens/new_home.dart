import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/data/shop.dart';
import 'package:haahooui/data/user.dart';
import 'package:haahooui/screens/allshops.dart';
import 'package:haahooui/screens/cart.dart';
import 'package:haahooui/screens/grid.dart';
import 'package:haahooui/screens/grids.dart';
import 'package:haahooui/services/services.dart';
import 'package:haahooui/widgets/navigation_widget.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';


class NewHome extends StatefulWidget {
  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  int index=0;
  List<User> users = List();
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  final List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQUvbvy_-gycqGkqlrsQZ-RI_4GpXB-VaSnSA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQQ_G9U9095poYEIvtg8fnA2Ef3dcjLEebptQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcThIxirSF8o6emUYiXOe_ho7MHxltIlkPR9ag&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTq53r8_n6c6_9HZaWlkJ4NQBxLIjXX7FVCZA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
        drawer: NavigationDrawer(),
        appBar:
        AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('SeekSook',style: TextStyle(
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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Icons.my_location))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    HeaderWidget("Header 1"),
                  ],

                ),


              ),

              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Head("Categories"),
                  ],

                ),


              ),

              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,childAspectRatio: MediaQuery.of(context).size.height / 950),
                delegate: SliverChildListDelegate(
                  [

                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSTNx3JaglsWuazU56geYPkEcpQAioehHAsA&usqp=CAU","Cleaning"),
                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQn9HI9mEvR2qN6wnRVI2OZOf1dX9ykCTnNDA&usqp=CAU","Grocery"),
                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdc2B4xkrNcjUfc1VyVezcIyhw8UJ-ZuQJrg&usqp=CAU","Fish & Meat"),
                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9YjSmJ3OjuS294eZRr8pC7BHnYwAbyyisAA&usqp=CAU","Breads"),
                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU","Bakery"),
                    BodyWidget("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReVfuK8v0igVWNJcMXu5xWKEaSPh2sIrhaNg&usqp=CAU","Fruits"),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    HeadViewAll("Shops"),
                  ],

                ),


              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5.0,mainAxisSpacing:5.0,childAspectRatio: MediaQuery.of(context).size.height / 950),
                delegate: SliverChildListDelegate(
                  [
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR1-xJNYMYptk7dY1yzWzxzgxNMJizrMX1SbA&usqp=CAU","Lulu Mall"),
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSP9IEJ4qUq05Mih0lTf3zVfuDAsN81YNA7Zg&usqp=CAU","Iftar"),
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVNkmnSe_By_UmoTce70F0ynL_mQtwXdL95w&usqp=CAU","Rollz & Grillz"),
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR_bV9K3Smi7sraDnK4j3IVHaTFx_EFP8oudQ&usqp=CAU","Ceylon"),
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTxHIgwRY66-x8EmWBSWSKHVuGwlTPO-lYnZg&usqp=CAU","Oberon Mall"),
                    Shops("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmf53SE9p0edy_jTb9wwZ-7ZpYg2xAN1PK5A&usqp=CAU","Bismi")
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Head("Offers For You"),
                  ],

                ),


              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
//                    Head("Shops"),
                  SliderHome(),
                  ],

                ),


              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Head("Recently Viewed"),
                  ],

                ),


              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150.0,
                            height: 180,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              images[index]),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Sample",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0),
                                  child: Text(
                                    "Rs. 145",
                                    style: TextStyle(fontSize: 12.0,color: Colors.red,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Services.getUsers().then((users1) {
      this.users = users1;
      print(users[0].name);
    });
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSTNx3JaglsWuazU56geYPkEcpQAioehHAsA&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Cleaning",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdc2B4xkrNcjUfc1VyVezcIyhw8UJ-ZuQJrg&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Fish & Meat",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9YjSmJ3OjuS294eZRr8pC7BHnYwAbyyisAA&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Breads ",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Bakery",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReVfuK8v0igVWNJcMXu5xWKEaSPh2sIrhaNg&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Fruits",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child:
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQn9HI9mEvR2qN6wnRVI2OZOf1dX9ykCTnNDA&usqp=CAU"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text(
                  "Grocery ",
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String text;

  HeaderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:4.0,right: 4.0,top: 15,bottom: 15),
      child: Card(
        child: TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: "Search for Shops & Categories",
                prefixIcon: Icon(Icons.search),
          ),
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
      color: Colors.grey[200],
    );
  }
}

class Head extends StatelessWidget {
  final String name;

  Head(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),

        ],
      ),
    );
  }
}


class HeadViewAll extends StatelessWidget {
  final String name;

  HeadViewAll(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AllShops()
                  ));
                },
                child: Text("View All",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final String  image;
  final String name;

  BodyWidget(this.image,this.name);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: NetworkImage(
                       image),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
           name,
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}

class Shops extends StatelessWidget {
  final String  image;
  final String name;

  Shops(this.image,this.name);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8),
              height: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(
                        image),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}


class SliderHome extends StatefulWidget {
  @override
  _SliderHomeState createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];


  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 250,
          viewportFraction: 1.0,
          enlargeCenterPage: false,

          // autoPlay: false,
        ),
        items: imgList.map((item) => Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: NetworkImage(item, ),fit: BoxFit.fill,
                )
              ),

            ),
          ),
        )).toList(),
      ),
    );
  }
}
