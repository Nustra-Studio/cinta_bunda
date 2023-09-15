import 'dart:io';

import 'package:cinta_bunda/apiVar.dart';
import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    return post(
      LoginAPI,
      data,
    );
  }
}
