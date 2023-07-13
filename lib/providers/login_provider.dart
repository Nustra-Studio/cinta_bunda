import 'dart:io';

import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'content-type': 'application/json',
    };
    return post(
        'https://cloudinventory.nustrastudio.com/api/member/login', data,
        headers: myHeader);
  }
}
