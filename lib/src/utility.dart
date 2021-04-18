import 'package:flutter/material.dart';

class EmptyWidgetUtility {
  static double getHeightDimention(BuildContext context, double unit) {
    if (fullHeight(context) <= 460.0) {
      return unit / 1.5;
    } else {
      return getDimention(context, unit);
    }
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getDimention(context, double unit) {
    if (fullWidth(context) <= 360.0) {
      return unit / 1.3;
    } else {
      return unit;
    }
  }

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
