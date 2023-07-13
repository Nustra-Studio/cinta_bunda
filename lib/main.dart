import 'package:cinta_bunda/pages/account_overview.dart';
import 'package:cinta_bunda/pages/login_page.dart';
import 'package:cinta_bunda/pages/main_page.dart';
import 'package:cinta_bunda/pages/transactions_history.dart';
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
