import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fill all the fields',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    Text(
                      'Fields marked with * are mandatory',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name*',
                    focusColor: kPrimaryColor,
                  ),
                  style: kInputTextColor,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Address*',
                    focusColor: kPrimaryColor,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '',
                    focusColor: kPrimaryColor,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'State*',
                          focusColor: kPrimaryColor,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'City*',
                          focusColor: kPrimaryColor,
                        ),
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Pincode*',
                          focusColor: kPrimaryColor,
                        ),
                        maxLength: 5,
                        maxLengthEnforced: true,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number*',
                          focusColor: kPrimaryColor,
                        ),
                        maxLength: 10,
                        maxLengthEnforced: true,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Alternative Phone Number',
                      focusColor: kPrimaryColor,
                    ),
                    maxLines: 1,
                    maxLength: 10,
                    maxLengthEnforced: true,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('SAVE'),
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
