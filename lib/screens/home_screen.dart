import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/register.dart';
import 'package:haahooui/screens/login.dart';
import 'package:haahooui/widgets/rounded_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: Image(
              image: AssetImage('assets/images/logo.jpg'),
            ),
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Registration()));
              },
              child: RoundedButton(text: 'Register', buttonColor: kPrimaryColor)),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: RoundedButton(
              text: 'Login',
              buttonColor: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
