import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 29,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 98,
                      height: 86,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    Container()
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Member',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Welcome back! please enter your detail.',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF6A6C71)),
                      )
                    ]),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 26, 20, 6),
                child: Text(
                  'Nomor HP',
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      hintText: 'Nomor HP'),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 26, 20, 6),
                child: Text(
                  'Password',
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
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
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('Sign In'),
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFF48B979)),
                    )),
              )
            ],
          ),
        ));
  }
}
