import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:haahooui/screens/new_home.dart';
import 'package:haahooui/screens/product_detail.dart';

class Shopdetail extends StatefulWidget {
  @override
  _ShopdetailState createState() => _ShopdetailState();
}

class _ShopdetailState extends State<Shopdetail> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          currentIndex: index,
          onTap: (int index1) {
            setState(() {
              index = index1;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('Profile')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text('Wallet')),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit), title: Text('Edit')),
          ],
          type: BottomNavigationBarType.fixed,
        ),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Shop Details"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child:
          
          CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
//                    Head("Shops"),
                    SliderHome(),
                    ShopName()
                  ],



                ),



              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: MediaQuery.of(context).size.height / 950,),
                delegate: SliverChildListDelegate(
                  [

                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSTNx3JaglsWuazU56geYPkEcpQAioehHAsA&usqp=CAU","Cleaning"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQn9HI9mEvR2qN6wnRVI2OZOf1dX9ykCTnNDA&usqp=CAU","Grocery"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdc2B4xkrNcjUfc1VyVezcIyhw8UJ-ZuQJrg&usqp=CAU","Fish & Meat"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9YjSmJ3OjuS294eZRr8pC7BHnYwAbyyisAA&usqp=CAU","Breads"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU","Bakery"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReVfuK8v0igVWNJcMXu5xWKEaSPh2sIrhaNg&usqp=CAU","Fruits"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSTNx3JaglsWuazU56geYPkEcpQAioehHAsA&usqp=CAU","Cleaning"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQn9HI9mEvR2qN6wnRVI2OZOf1dX9ykCTnNDA&usqp=CAU","Grocery"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTdc2B4xkrNcjUfc1VyVezcIyhw8UJ-ZuQJrg&usqp=CAU","Fish & Meat"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR9YjSmJ3OjuS294eZRr8pC7BHnYwAbyyisAA&usqp=CAU","Breads"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRX6aaZ9ziXNi0j2dHc_e02f-0zm9EX4VfjYg&usqp=CAU","Bakery"),
                    Products("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReVfuK8v0igVWNJcMXu5xWKEaSPh2sIrhaNg&usqp=CAU","Fruits"),
                  ],
                ),
              ),
            ],
          ),
        ));
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
        padding: const EdgeInsets.all(5),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 250,
            viewportFraction: 1.0,
            autoPlay: true,
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

class ShopName extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Shop Name",
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
              child: Text("View All",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  final String  image;
  final String name;

  Products(this.image,this.name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(image,fit: BoxFit.fill,height: 130,width: double.infinity,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(name,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Rs. 125",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),),
                ),
                Card(
                  child: Container(
                    color: kPrimaryColor,
                    width: double.infinity,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("ADD TO CART",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
     
  }
}


