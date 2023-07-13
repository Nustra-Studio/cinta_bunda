import 'package:cinta_bunda/pages/main_page.dart';
import 'package:cinta_bunda/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class LoginController extends GetxController {
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  void auth() {
    String phoneNum = phoneController.text;
    String password = passwordController.text;

    if (phoneNum.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Nomor HP dan Password Tidak Boleh Kosong',
          backgroundColor: Colors.red, colorText: Colors.white);
    } else {
      EasyLoading.show();
      var data = {"nomor_hp": phoneNum, "password": password};
      LoginProvider().auth(data).then((value) {
        if (value.statusCode == 200) {
          var responeBody = value.body;
          var data = responeBody['data'];
          SpUtil.putString('token', responeBody['access_token']);
          SpUtil.putString('nomor', data['phone']);
          SpUtil.putBool('isLogin', true);
          Get.offAll(MainpageHome());
          Get.snackbar('Success', 'Login Berhasil',
              backgroundColor: Color.fromARGB(255, 75, 212, 146),
              colorText: Colors.white);
        } else {
          Get.snackbar('Error', 'Login Gagal',
              backgroundColor: Colors.red, colorText: Colors.white);
        }
        EasyLoading.dismiss();
      });
    }
  }
}
