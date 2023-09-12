import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homecontroller extends GetxController {
  var isdark = false;

  void changetheme(bool state) {
    if (state == true) {
      isdark = true;
      Get.changeTheme(ThemeData.light());
    } else {
      isdark = false;
      Get.changeTheme(ThemeData.dark());
    }
    update();
  }
}
