import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/screens/login.dart';
import 'package:haahooui/widgets/rounded_button.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
              decoration:
              kInputDecoration.copyWith(hintText: 'Enter First Name'),
              style: kInputTextColor,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration:
              kInputDecoration.copyWith(hintText: 'Enter Last Name'),
              style: kInputTextColor,
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
              keyboardType: TextInputType.phone,
              decoration:
              kInputDecoration.copyWith(hintText: 'Enter phone number'),
              style: kInputTextColor,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: kInputDecoration.copyWith(hintText: 'Enter password'),
              obscureText: true,
              style: kInputTextColor,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Login()
                ));
              },
              child: RoundedButton(
                buttonColor: kPrimaryColor,
                text: 'Register',
              ),
            )
          ],
        ),
      ),
    );
  }
}
