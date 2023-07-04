import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountOverView extends StatelessWidget {
  const AccountOverView({Key key}) : super(key: key);

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
  double getCircleDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              right: -getCircleDiameter(context) / 3,
              top: -getCircleDiameter(context) / 3,
              child: Container(
                width: getCircleDiameter(context),
                height: getCircleDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFA8CE45).withOpacity(1)),
              ),
            ),
            Positioned(
              left: -getCircleDiameter(context) / 2.5,
              bottom: -getCircleDiameter(context) / -0.9,
              child: Container(
                width: getCircleDiameter(context),
                height: getCircleDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF48B979).withOpacity(0.63)),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 98,
                        height: 86,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'))),
                      ),
                      Column(
                        children: [
                          Text('Good morning',
                              style: GoogleFonts.rubik(fontSize: 17)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '08195648213',
                            style: GoogleFonts.rubik(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    width: 327,
                    height: 197,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 252, 252),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          height: 110,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah Point',
                                style: GoogleFonts.rubik(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '12.000',
                                style: GoogleFonts.rubik(
                                    fontSize: 35, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                          width: double.infinity,
                          height: 87,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF00A056),
                                    Color(0xFFA8CE45)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(3, 3),
                                    blurRadius: 10)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '3452 1235 7894 1678',
                                style: GoogleFonts.rubik(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('05/2025',
                                  style: GoogleFonts.rubik(
                                      fontSize: 17, color: Colors.white))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Text(
                      "LAST TRANSACTIONS",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xFF858585)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 252, 252),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              title: Text("Jilbab Coklat",
                                  style: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              subtitle: Text("Tue 12.10.2023",
                                  style: GoogleFonts.rubik(
                                      color: Color(0xFF858585))),
                              trailing: Text(
                                "RP.12.500",
                                style: GoogleFonts.rubik(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 252, 252),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              title: Text("Jilbab Coklat",
                                  style: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              subtitle: Text("Tue 12.10.2023",
                                  style: GoogleFonts.rubik(
                                      color: Color(0xFF858585))),
                              trailing: Text(
                                "RP.12.500",
                                style: GoogleFonts.rubik(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 252, 252),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              title: Text("Jilbab Coklat",
                                  style: GoogleFonts.rubik(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              subtitle: Text("Tue 12.10.2023",
                                  style: GoogleFonts.rubik(
                                      color: Color(0xFF858585))),
                              trailing: Text(
                                "RP.12.500",
                                style: GoogleFonts.rubik(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Align(
                  //     alignment: Alignment.center,
                  //     child: Text(
                  //       'Show More',
                  //       style: GoogleFonts.rubik(
                  //           fontSize: 16, color: Color(0xFF48B979)),
                  //     ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
