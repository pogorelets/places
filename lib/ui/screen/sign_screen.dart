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
            child: Text(titleSignLightScreen,
              textAlign: TextAlign.left,
              style: TextStyle(color: kTextColor,
              fontSize: kAppBarFontSize,),
            ),
          ),
        ),
        body: Container(
          child: Center(child: Text("Sign light screen")),
        ));
  }
}
