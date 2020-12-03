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
            child: RichText(
              text: TextSpan(
                  text: "C",
                  style: TextStyle(color: Colors.green, fontSize: 32),
                  children: [
                    TextSpan(
                      text: "писок\n",
                      style: TextStyle(
                          color: const Color(0xFF3B3E5B), fontSize: 32),
                    ),
                    TextSpan(
                        text: "И",
                        style: TextStyle(color: Colors.yellow, fontSize: 32)),
                    TextSpan(
                        text: "нтересных мест",
                        style: TextStyle(
                            color: const Color(0xFF3B3E5B), fontSize: 32))
                  ]),
            ),
          ),
        ),
        body: Container(
          child: Center(child: Text("Sign light screen")),
        ));
  }
}
