import 'package:cinta_bunda/pages/account_overview.dart';
import 'package:cinta_bunda/pages/login_page.dart';
import 'package:cinta_bunda/pages/main_page.dart';
import 'package:cinta_bunda/pages/transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sp_util/sp_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: (SpUtil.getBool('isLogin', defValue: false)
          ? MainpageHome()
          : LoginPage()),
      builder: EasyLoading.init(),
    );
  }
}
