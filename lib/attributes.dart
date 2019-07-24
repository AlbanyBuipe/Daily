import 'package:flutter/material.dart';



ThemeData buildTheme(){
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: buildAppTextTheme(base.textTheme),
    primaryTextTheme: buildAppTextTheme(base.primaryTextTheme),
    accentTextTheme: buildAppTextTheme(base.accentTextTheme)

  );

}

TextTheme buildAppTextTheme(TextTheme baseText) {
  return baseText.copyWith(
    title: baseText.title.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: 32.0,
    ),
    caption: baseText.caption.copyWith(
      fontWeight: FontWeight.w300,
      fontSize: 32.0,
    ),
    display2: baseText.display2.copyWith(
      fontSize: 12.0,
      color: Colors.grey,
      fontWeight: FontWeight.w400
    ),
    display1: baseText.display1.copyWith(
      fontSize: 17.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    )
  ).apply(
    fontFamily: "Roboto Mono"
  );
}
