import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';

class AppTheme {
  static final defaultAppTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    appBarTheme: AppBarTheme(
      color: CustomColors.backgroundColor,
      elevation: 1,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: CustomColors.appBlackColor1),
      actionsIconTheme: IconThemeData(color: CustomColors.appBlackColor1),
    ),
    toggleableActiveColor: CustomColors.primaryColor,
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: CustomStyle.textStyleButton,
      subtitle1: CustomStyle.textStyleSubtitle1,
      subtitle2: CustomStyle.textStyleSubtitle2,
      bodyText1: CustomStyle.textStyleBody1,
      bodyText2: CustomStyle.textStyleBody2,
    ),
    canvasColor: Colors.transparent,
    iconTheme: IconThemeData(color: CustomColors.primaryColor),
    fontFamily: 'Roboto',
  );
}
