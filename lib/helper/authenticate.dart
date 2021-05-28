import 'package:chat_app/views/signin.dart';
import 'package:chat_app/views/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignin = true;

  void toggleview() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return SignIn(toggleview);
    } else {
      return SignUp(toggleview);
    }
  }
}
