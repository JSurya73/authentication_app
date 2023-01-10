import 'package:flutter/material.dart';

import 'package:authentication_app/SignUpPage.dart';
import 'package:authentication_app/UserLogin.dart';
import './loginPage.dart';

void main() {
  runApp(AuthenticationApp());
}

class AuthenticationApp extends StatefulWidget {
  @override
  State<AuthenticationApp> createState() => _AuthenticationAppState();
}

class _AuthenticationAppState extends State<AuthenticationApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        'loginPage': (context) => Login(),
        'SignUpPage': (context) => SignUp(),
        'UserLogin' :(context) => UserLogin()
      },
    );
  }
}
