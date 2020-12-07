import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';


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
                  style: kGreenAppBarTextStyle,
                  children: [
                    TextSpan(
                      text: title2,
                      style: kMainAppBarTextStyle,
                    ),
                    TextSpan(
                        text: title3,
                        style: kYellowAppBarTextStyle),
                    TextSpan(
                        text: title4,
                        style: kMainAppBarTextStyle)
                  ]),
            ),
          ),
        ),
        body: Container(

        ));
  }
}
