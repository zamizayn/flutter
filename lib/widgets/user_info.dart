import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 30,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text('User Name'),
        SizedBox(
          height: 5.0,
        ),
        Text('Phone Number'),
        SizedBox(
          height: 5.0,
        ),
        Text('Email Address'),
      ],
    );
  }
}
