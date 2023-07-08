import 'package:cinta_bunda/page/account_overview.dart';
import 'package:cinta_bunda/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  String _Password = '';

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    double getCircleDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width * 7 / 1.8;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: -getCircleDiameter(context) / 1.2,
                left: -getCircleDiameter(context) / 2,
                child: Container(
                  width: getCircleDiameter(context),
                  height: getCircleDiameter(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00A056).withOpacity(0.63)),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 167,
                        height: 163,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo2.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ]),
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              border: InputBorder.none,
                              hintText: 'Nomor HP'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ]),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_open),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Dengan ini saya setuju dengan',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  ' Terms and Condition',
                                  style: TextStyle(
                                      color: Color(0xFF00A056), fontSize: 11),
                                ),
                                Text(
                                  ' dan',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  ' Privacy',
                                  style: TextStyle(
                                      color: Color(0xFF00A056), fontSize: 11),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  ' Policy',
                                  style: TextStyle(
                                      color: Color(0xFF00A056), fontSize: 11),
                                ),
                                Text(
                                  ' Pada aplikasi ini',
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              child: Text('Masuk Sekarang'),
                              onPressed: () {
                                Get.to(MainpageHome());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                primary: Color(0xFF48B979),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
