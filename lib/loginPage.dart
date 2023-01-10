import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login.jpg"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(
                left: 25, top: MediaQuery.of(context).size.height * 0.20),
            child: Text(
              "Roller's Login",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  left: 85,
                  right: 85,
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 229, 201, 201),
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(height: 28),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 229, 201, 201),
                      filled: true,
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 40, top: 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigoAccent),
                            onPressed: (() =>
                                {Navigator.pushNamed(context, 'UserLogin')}),
                            child: Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                    Container(
                        padding: EdgeInsets.only(left: 30, top: 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 209, 158, 158)),
                            onPressed: (() =>
                                {Navigator.pushNamed(context, 'SignUpPage')}),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 116, 162, 185),
                              decoration: TextDecoration.underline,
                              decorationThickness: 1.9),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
