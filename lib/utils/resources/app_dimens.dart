import 'package:flutter/material.dart';


class AppDimension {
  static const double menuMaxNeededWidth = 304;
  static const double menuRowHeight = 74;
  static const double menuIconSize = 36;
  static const double menuTextSize = 24;
  static const double menuTextSize1 = 22;
  static const double menuTextSize2 = 20;
  static const double menuTextSize3 = 18;

  static const double chartBoxMinWidth = 350;

  static const double defaultRadius = 8;
  static const double chartSamplesSpace = 32.0;
  static const double chartSamplesMinWidth = 350;


  static double height(BuildContext conText){
    return MediaQuery.of(conText).size.height;
  }
  static double width(BuildContext conText){
    return MediaQuery.of(conText).size.width;
  }
}
