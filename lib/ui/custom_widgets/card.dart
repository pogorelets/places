///Основная карточка, от которой можно собирать остальные как конструктор
///передавая объект Sight, список кнопок на карточке и список текстовых виджетов
///На её основе сделаны карточка Хочу посетить и карточка Посетил
///Если направление мысле верное, то переделаю и карточку места по аналогии

import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/text_styles.dart';

class MainCard extends StatelessWidget {
  final Sight sight;
  final List<Widget> textColumn;
  final List<Widget> buttons;

  const MainCard({this.sight, this.textColumn, this.buttons});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      buildImageWidget(context),
      buildTextType(),
    ];
    widgets.addAll(buttons);

    return Padding(
      padding: const EdgeInsets.only(bottom: mainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heightImage,
            child: Stack(
              children: widgets,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: bkgCardColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(radiusImage),
                  bottomRight: Radius.circular(radiusImage),
                ),
              ),
              padding: const EdgeInsets.only(
                left: mainPadding,
                right: mainPadding,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: textColumn,
              )
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildTextType() {
    return Positioned(
      top: mainPadding,
      left: mainPadding,
      child: Text(
        sight.type,
        style: typeTextStyle,
      ),
    );
  }

  SizedBox buildImageWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - mainPadding * 2,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radiusImage),
          topRight: Radius.circular(radiusImage),
        ),
        child: Image.network(
          sight.url,
          fit: BoxFit.fitWidth,
          loadingBuilder: (context, child, progress) {
            if (progress == null)
              return child;
            else
              return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

}
