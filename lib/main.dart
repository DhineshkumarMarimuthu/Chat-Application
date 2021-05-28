// import 'package:chat_app/views/signin.dart';
import 'package:chat_app/helper/authenticate.dart';
import 'package:chat_app/views/chatscreen.dart';
// import 'package:chat_app/views/signup.dart';
import 'package:flutter/material.dart';

import 'helper/helperfunction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userIsLoggedIn = false;
  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff1F1F1F),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: userIsLoggedIn != null
          ? userIsLoggedIn
              ? ChatRoom()
              : Authenticate()
          : Authenticate(),
    );
  }
}
