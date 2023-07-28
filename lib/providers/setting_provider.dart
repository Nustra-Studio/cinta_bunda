import 'dart:io';

import 'package:get/get.dart';

class SettingProvider extends GetConnect {
  Future<Response> auth(var data) {
    return post(
      'https://cloudinventory.nustrastudio.com/api/member/updatemember',
      data,
    );
  }
}
