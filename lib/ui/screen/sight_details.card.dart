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
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: galleryHeight,
            ),
            child: Stack(
              children: [
                Center(child: CircularProgressIndicator()),
                Container(
                  child: Image.network(
                    testUrl,
                    fit: BoxFit.cover,
                  ),
                  height: galleryHeight,
                ),
                Positioned(
                  top: positionBtnBackTop,
                  left: positionBtnBackLeft,
                  child: Container(
                    height: btnBackSize,
                    width: btnBackSize,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: paddingDetail,
                ),
                Text(
                  headDetail,
                  style: headDetailsTextStyle,
                ),
                const SizedBox(
                  height: minPaddingDetail,
                ),
                Row(
                  children: [
                    Text(
                      typeDetail,
                      style: typeDetailTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: mainPadding),
                      child: Text(
                        closed,
                        style: modeTextStyle,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: paddingDetail,
                ),
                Text(
                  testTextDetail,
                  style: detailTextStyle,
                ),
                const SizedBox(
                  height: paddingDetail,
                ),
                Container(
                  height: greenButtonDetailHeight,
                  width: double.infinity,
                  color: routeButtonColor,
                ),
                const SizedBox(
                  height: paddingDetail,
                ),
                Container(
                  height: heightDetailLine,
                  color: lineDetailColor.withOpacity(opacityLineDetail),
                ),
                SizedBox(
                  height: paddingUnderLine,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: buttonHeight,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: buttonHeight,
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
