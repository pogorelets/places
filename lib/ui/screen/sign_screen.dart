import 'package:flutter/material.dart';

class SignLightScreen extends StatefulWidget {
  @override
  _SignLightScreenState createState() => _SignLightScreenState();
}

class _SignLightScreenState extends State<SignLightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          toolbarHeight: 112,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              "Список\nинтересных мест",
              textAlign: TextAlign.left,
              style: TextStyle(color: const Color(0xFF3B3E5B),
              fontSize: 32,

              ),
            ),
          ),
        ),
        body: Container(
          child: Center(child: Text("Sign light screen")),
        ));
  }
}
