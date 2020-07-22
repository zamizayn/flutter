import 'package:flutter/material.dart';
import 'package:haahooui/constants.dart';
import 'package:haahooui/widgets/rounded_button.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Enter e-mail'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter Phone Number'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter new Password'),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Re-type new Password'),
              ),
              SizedBox(
                height: 15,
              ),
              Visibility(
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        decoration: InputDecoration(hintText: 'Enter OTP'),
                      ),
                    ),
                    GestureDetector(onTap: () {}, child: Text('Resend'))
                  ],
                ),
//                maintainSize: true,
//                maintainAnimation: true,
//                maintainState: true,
                visible: false,
              ),
              RoundedButton(
                buttonColor: kPrimaryColor,
                text: 'Change Password',
              )
            ],
          ),
        ),
      ),
    );
  }
}
