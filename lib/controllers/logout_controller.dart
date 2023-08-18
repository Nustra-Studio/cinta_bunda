import 'dart:async';

import 'package:cinta_bunda/pages/main_page.dart';
import 'package:cinta_bunda/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../pages/login_page.dart';

class Logout extends GetxController {
  Timer authTimer;

  void logout() {
    SpUtil.clear();
    Get.offAll(LoginPage());
  }

  void autoLogout() {
    // if (authTimer != null) {
    //   authTimer.cancel();
    // }
    authTimer = Timer(Duration(minutes: 5), logout);
  }
}
