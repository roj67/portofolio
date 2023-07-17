import 'package:flutter/material.dart';

String responsive(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  if (width <= 600) {
    return "isMobile";
  } else if (width <= 1000) {
    return "isTablet";
  } else {
    return "isPc";
  }
}
