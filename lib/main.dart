import 'package:cinta_bunda/page/account_overview.dart';
import 'package:cinta_bunda/page/login_page.dart';
import 'package:cinta_bunda/page/main_page.dart';
import 'package:cinta_bunda/page/transactions_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
