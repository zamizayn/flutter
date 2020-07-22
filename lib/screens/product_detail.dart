import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/screens/shopdetail.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Profile')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('Wallet')),
          BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text('Edit')),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Product Details"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(Icons.shopping_cart)),
        ],
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
//                    Head("Shops"),
                SliderHome(),
                ProductName(),
              ],
            ),
          ),
          SliverList(delegate: new SliverChildListDelegate(_buildList(8))),
          SliverList(
            delegate: SliverChildListDelegate(
              [
//                    Head("Shops"),

                MoreData(),
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
    );
  }
}

class ProductName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Xiaomi Redmi K20 Pro (6GB RAM , 128GB Internal)",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Extra Rs. 2000 Discount",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Rs. 27999",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Available Offers",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(color: Colors.grey),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Icon(
                  Icons.local_offer,
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flat Rs. 30 OFF on first prepaid transaction using Rupay Card , Minimum Order Value Rs. 750/-",
                    style:
                        TextStyle(fontSize: 16.0,),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Icon(
                  Icons.local_offer,
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flat Rs. 30 OFF on first prepaid transaction using Rupay Card , Minimum Order Value Rs. 750/-",
                    style:
                        TextStyle(fontSize: 16.0, ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Icon(
                  Icons.local_offer,
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flat Rs. 30 OFF on first prepaid transaction using Rupay Card , Minimum Order Value Rs. 750/-",
                    style:
                        TextStyle(fontSize: 16.0, ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Show More",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(color: Colors.grey),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style:
              TextStyle(fontSize: 16.0,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(color: Colors.grey),
          ),


          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Highlights",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),



        ],
      ),
    );
  }
}

class MoreData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "BUY NOW",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Divider(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Other Products",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}


List _buildList(int count) {
  List<Widget> listItems = List();

  for (int i = 0; i < count; i++) {
    listItems.add(new Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: new Text('Feature  ${i.toString()}',
            style: new TextStyle(fontSize: 13.0))));
  }

  return listItems;
}
