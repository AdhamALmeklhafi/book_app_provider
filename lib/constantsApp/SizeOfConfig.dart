import 'package:flutter/material.dart';

class SizeOfConfig {
  static double calculateH(
      {required BuildContext context, required double number}) {
    double height = MediaQuery.of(context).size.height / 815;
    return height * number;
  }

  static double calculateW({
    required BuildContext context,
    required double number,
  }) {
    double width = MediaQuery.of(context).size.width / 375;
    return width * number;
  }
}
