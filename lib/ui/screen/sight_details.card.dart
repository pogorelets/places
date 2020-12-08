import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

class SightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: kGalleryHeight,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: EdgeInsets.only(top: kPaddingDetail),
              child: Text(headDetail, style: kHeadDetailsTextStyle,) ,
            ),
            Padding(
              padding: EdgeInsets.only(top:kPaddingTopTextDetail),
              child: Row(
                children: [
                  Text(typeDetail, style: kTypeDetailTextStyle,),
                  Padding(
                    padding: const EdgeInsets.only(left: kMainPadding),
                    child: Text(closed, style: kModeTextStyle),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: kPaddingDetail,bottom: kPaddingDetail),
              child: Text(testTextDetail,
              style: kDetailTextStyle, ),
            ),
            Container(
              height: kGreenButtonDetailHeight,
              width: double.infinity,
              color: kRouteButtonColor
            ),
            Padding(
              padding: EdgeInsets.only(top: kPaddingTopRoute),
              child: Row(
                children: [
                  Expanded(child: Container(
                    height: kButtonHeight,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(textButtonPlan)),
                    color: Colors.grey,
                    //
                  )),
                  Expanded(child: Container(
                    height: kButtonHeight,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(textButtonFavorite)),
                    color: Colors.blueGrey,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
