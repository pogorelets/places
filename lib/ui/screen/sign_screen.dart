import 'package:flutter/material.dart';
import 'package:places/constants.dart';

class SignLightScreen extends StatefulWidget {
  @override
  _SignLightScreenState createState() => _SignLightScreenState();
}

class _SignLightScreenState extends State<SignLightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: kMyToolbarHeight,
          backgroundColor: Colors.transparent,
          elevation: kAppBarElevation,
          title: Padding(
            padding: EdgeInsets.only(top: kTitlePaddingTop),
            child: RichText(
              text: TextSpan(
                  text: title1,
                  style: TextStyle(color: Colors.green, fontSize: kAppBarFontSize),
                  children: [
                    TextSpan(
                      text: title2,
                      style: TextStyle(
                          color: kTextColor, fontSize: kAppBarFontSize),
                    ),
                    TextSpan(
                        text: title3,
                        style: TextStyle(color: Colors.yellow, fontSize: kAppBarFontSize)),
                    TextSpan(
                        text: title4,
                        style: TextStyle(
                            color: kTextColor, fontSize: kAppBarFontSize))
                  ]),
            ),
          ),
        ),
        body: Container(
          child: Center(child: Text("Sign light screen")),
        ));
  }
}
