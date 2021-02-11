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
    var mainContainerHeight = getMainContainerHeight();

    return DefaultTabController(
      length: countTabFavoritePlaces,
      child: Scaffold(
        appBar: buildAppBar(),
        body: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: TabBarView(
              children: [
                buildTab(
                  mainContainerHeight,
                  IndicatorVisitingTabWidget(
                    widgets: [
                      ActiveTabIndicatorWidget(text: want_visit),
                      InActiveTabWidget(text: visited)
                    ],
                  ),
                  PlaceholderWidget(
                    assetImage: "res/Card.png",
                    title: empty,
                    message: mark_favorite_places,
                  ),
                  [
                    SizedBox(
                      height: paddingToTab,
                    ),
                    PlanSightCard(sight: widget.planSights[0]),
                    PlanSightCard(sight: widget.planSights[0]),
                  ],
                    widget.planSights,
                ),
                buildTab(
                  mainContainerHeight,
                  IndicatorVisitingTabWidget(
                    widgets: [
                      InActiveTabWidget(text: want_visit),
                      ActiveTabIndicatorWidget(text: visited)
                    ],
                  ),
                  PlaceholderWidget(
                    assetImage: "res/GO.png",
                    title: empty,
                    message: mark_favorite_places,
                  ),
                  [
                    SizedBox(
                      height: paddingToTab,
                    ),
                    VisitedSightCard(sight: widget.planSights[0]),
                    VisitedSightCard(sight: widget.planSights[0]),
                  ],
                    widget.visitedSights,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }

  Column buildTab(
    double mainContainerHeight,
    Widget indicatorWidget,
    Widget placeholder,
    List<Widget> widgets,
    List<Sight> sights,
  ) {
    return Column(
      children: [
        indicatorWidget,
        SizedBox(
          height: mainContainerHeight,
          child: Builder(
            builder: (context) {
              if (sights.isEmpty) {
                return placeholder;
              } else {
                return SingleChildScrollView(
                  child: Column(children: widgets),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  double getMainContainerHeight() {
    return MediaQuery.of(context).size.height -
        bottomBarHeight -
        heightBottomBarLine -
        heightFavoriteToolbar -
        customIndicatorsHeight -
        MediaQuery.of(context).padding.top;
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: heightFavoriteToolbar,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            favorite,
            style: toolbarFavoriteTextStyle,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: emptyElevationToolbar,
    );
  }
}
