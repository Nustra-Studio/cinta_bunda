import 'package:cinta_bunda/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import 'package:supercharged/supercharged.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

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
    TextEditingController UsernameController = TextEditingController();
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: '00A056'.toColor().withOpacity(0.85),
              ),
              Column(
                children: [
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'PROFILE SETTING',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 132,
                          height: 121,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/settingLogo.png'))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 26, 20, 6),
                    child: Text(
                      'Username',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: TextField(
                      controller: UsernameController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          border: InputBorder.none,
                          hintText: 'Username'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 6),
                    child: Text(
                      'Email',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: TextField(
                      controller: EmailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          border: InputBorder.none,
                          hintText: 'Email'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 6),
                    child: Text(
                      'Password',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: _obscureText,
                      controller: PasswordController,
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
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          child: Text(
                            'Update Data',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: '00A056'.toColor().withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Logout',
                              ),
                              Icon(Icons.logout_outlined)
                            ],
                          ),
                          onPressed: () {
                            SpUtil.clear();
                            Get.offAll(LoginPage());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: 'FF0000'.toColor(),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
