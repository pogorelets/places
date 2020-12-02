import 'package:flutter/material.dart';

class SignLightScreen extends StatefulWidget {
  @override
  _SignLightScreenState createState() => _SignLightScreenState();
}

class _SignLightScreenState extends State<SignLightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First Scaffold"),),
        body: Container(
      child: Center(child: Text("Sign light screen")),
    ));
  }
}
