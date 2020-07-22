import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/screens/home_screen.dart';
import 'package:haahooui/screens/main_screen.dart';
import 'package:haahooui/screens/new_home.dart';
import 'package:haahooui/widgets/rounded_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                constraints: BoxConstraints.tightFor(width: 100, height: 100),
                child: Image(
                  image: AssetImage('assets/images/logo.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: kInputDecoration.copyWith(hintText: 'Enter e-mail'),
                style: kInputTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration:
                    kInputDecoration.copyWith(hintText: 'Enter Password'),
                style: kInputTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NewHome()
                  ));
                },
                child: RoundedButton(
                  buttonColor: kPrimaryColor,
                  text: 'LogIn',
                ),
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Register',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black54),
              )
            ]),
      ),
    );
  }
}
