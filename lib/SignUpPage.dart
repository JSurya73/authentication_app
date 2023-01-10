import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 80),
            child: Text(
              "Create Account",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 45),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 198, 183, 183),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      hintText: "Email"),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 45),
                child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 198, 183, 183),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Password")),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 45),
                child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 198, 183, 183),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Re-enter Password")),
              ),
              SizedBox(height: 40),
              TextButton(
                  onPressed: null,
                  child: Text(
                    "Create",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        backgroundColor: Colors.redAccent),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
