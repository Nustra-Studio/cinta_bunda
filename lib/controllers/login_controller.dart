import 'package:cinta_bunda/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      var data = {"phoneNum": phoneNum, "password": password};
      LoginProvider().auth(data).then((value) {
        if (value.statusCode == 200) {
          Get.snackbar('Success', 'Login Berhasil',
              backgroundColor: Color.fromARGB(255, 75, 212, 146),
              colorText: Colors.white);
        } else {
          Get.snackbar('Error', 'Login Gagal',
              backgroundColor: Colors.red, colorText: Colors.white);
        }
      });
    }
  }
}
