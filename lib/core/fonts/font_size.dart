import 'package:flutter/material.dart';

class FontSize {
  static double width(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width;
  }

  static double height(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height;
  }

  static double large(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width * 0.06; // example: responsive
  }

  static double medium(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width * 0.05;
  }

  static double small(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width * 0.04;
  }
}
