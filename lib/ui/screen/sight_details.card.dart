import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

class SightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: kGalleryHeight,
                color: Colors.blueGrey,
              ),
              Positioned(
                top: kPositionBtnBackTop,
                left: kPositionBtnBackLeft,
                child: Container(
                  height: kBtnBackSize,
                  width: kBtnBackSize,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMainPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kPaddingDetail,
                ),
                Text(
                  headDetail,
                  style: kHeadDetailsTextStyle,
                ),
                const SizedBox(
                  height: kMinPaddingDetail,
                ),
                Row(
                  children: [
                    Text(
                      typeDetail,
                      style: kTypeDetailTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kMainPadding),
                      child: Text(closed, style: kModeTextStyle),
                    )
                  ],
                ),
                const SizedBox(
                  height: kPaddingDetail,
                ),
                Text(
                  testTextDetail,
                  style: kDetailTextStyle,
                ),
                const SizedBox(
                  height: kPaddingDetail,
                ),
                Container(
                    height: kGreenButtonDetailHeight,
                    width: double.infinity,
                    color: kRouteButtonColor),
                const SizedBox(
                  height: kPaddingDetail,
                ),
                Container(
                  height: kHeightDetailLine,
                  color: kLineDetailColor.withOpacity(kOpacityLineDetail),
                ),
                SizedBox(
                  height: kPaddingUnderLine,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: kButtonHeight,
                        color: Colors.grey,
                        //
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: kButtonHeight,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
