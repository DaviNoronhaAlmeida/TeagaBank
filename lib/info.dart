import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Info extends GetxController {
  String type;
  Color color1 = const Color.fromRGBO(252, 162, 27, 1);
  Color color2 = Colors.transparent;

  Info(this.type);

  change(String value) {
    type = value;

    if (type == "CPF") {
      color1 = const Color.fromRGBO(252, 162, 27, 1);
      color2 = Colors.transparent;
    } else {
      color1 = Colors.transparent;
      color2 = const Color.fromRGBO(252, 162, 27, 1);
    }

    update();
  }
}
