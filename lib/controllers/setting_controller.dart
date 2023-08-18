import 'package:cinta_bunda/providers/setting_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class SettingController extends GetxController {
  static TextEditingController UsernameController = TextEditingController();
  static TextEditingController EmailController = TextEditingController();
  static TextEditingController PasswordController = TextEditingController();

  void updateData() {
    String username = UsernameController.text;
    String password = PasswordController.text;
    String email = EmailController.text;

    EasyLoading.show();
    var data = {
      "access_token": SpUtil.getString('token'),
      "uuid": SpUtil.getString('uuid'),
      "data": {"username": username, "email": email, "password": password}
    };
    SettingProvider().auth(data).then((value) {
      if (value.statusCode == 200) {
        Get.snackbar('Success', 'Update Berhasil',
            backgroundColor: Color.fromARGB(255, 75, 212, 146),
            colorText: Colors.white);
      } else {
        Get.snackbar('Error', 'Update Gagal',
            backgroundColor: Colors.red, colorText: Colors.white);
      }
      EasyLoading.dismiss();
    });
  }
}
