///Экран Хочу посетить/Посетил
///Здесь можно вынести в отдельный виджет полностью вкладку по
///типу карточки места и передавать туда placeholder и список виджетов
///которые нужно отрисовать
///только не знаю правильно ли мыслю и не запутает ли это в конечном счете

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/custom_widgets/bottom_bar.dart';
import 'package:places/ui/custom_widgets/custom_tab_indicators.dart';
import 'package:places/ui/custom_widgets/placeholder_widget.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/screen/plan_card.dart';
import 'package:places/ui/screen/visited_card.dart';

class VisitingScreen extends StatefulWidget {
  final List<Sight> planSights;
  final List<Sight> visitedSights;

  const VisitingScreen({Key key, this.planSights, this.visitedSights})
      : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    var mainContainerHeight = MediaQuery.of(context).size.height -
        bottomBarHeight -
        heightBottomBarLine -
        heightFavoriteToolbar -
        customIndicatorsHeight -
        MediaQuery.of(context).padding.top;

    return DefaultTabController(
      length: countTabFavoritePlaces,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: heightFavoriteToolbar,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              favorite,
              style: toolbarFavoriteTextStyle,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: emptyElevationToolbar,
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: TabBarView(
              children: [
                Column(
                  children: [
                    IndicatorVisitingTabWidget(
                      widgets: [
                        ActiveTabIndicatorWidget(text: want_visit),
                        InActiveTabWidget(text: visited)
                      ],
                    ),
                    SizedBox(
                      height: mainContainerHeight,
                      child: Builder(
                        builder: (context) {
                          if (widget.planSights.isEmpty) {
                            return PlaceholderWidget(
                              assetImage: "res/Card.png",
                              title: empty,
                              message: mark_favorite_places,
                            );
                          } else {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: paddingToTab,
                                  ),
                                  PlanSightCard(sight: widget.planSights[0]),
                                  PlanSightCard(sight: widget.planSights[0]),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  IndicatorVisitingTabWidget(
                    widgets: [
                      InActiveTabWidget(text: want_visit),
                      ActiveTabIndicatorWidget(text: visited)
                    ],
                  ),
                  SizedBox(
                    height: mainContainerHeight,
                    child: Builder(
                      builder: (context) {
                        if (widget.planSights.isEmpty) {
                          return PlaceholderWidget(
                            assetImage: "res/GO.png",
                            title: empty,
                            message: mark_favorite_places,
                          );
                        } else {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: paddingToTab,
                                ),
                                VisitedSightCard(sight: widget.planSights[0]),
                                VisitedSightCard(sight: widget.planSights[0]),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }
}
