import 'package:cinta_bunda/controllers/logout_controller.dart';
import 'package:cinta_bunda/models/home_model.dart';
import 'package:cinta_bunda/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:sp_util/sp_util.dart';
import 'package:supercharged/supercharged.dart';

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
      MediaQuery.of(context).size.width * 2 / 4;

  HomeData homeData = HomeData();
  HomeProvider homeProvider = HomeProvider();
  List<Transaction> listTransaction = [];

  fetchData() async {
    homeData = await homeProvider.fetchData();
    listTransaction = homeData.transaksi;
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    setState(() {});
    super.initState();
  }

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
                    shape: BoxShape.circle, color: 'A8CE45'.toColor()),
              ),
            ),
            Positioned(
              left: -70
              // -getCircleDiameter(context) / 2.5
              ,
              top: 300
              // -getCircleDiameter(context) / -0.58
              ,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(right: 1),
                        width: 98,
                        height: 86,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good morning',
                              style: GoogleFonts.rubik(fontSize: 14)),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          (homeData.phone != null)
                              ? Text(
                                  '${homeData.phone}',
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  '',
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                              (homeData.poin == null)
                                  ? Text(
                                      'Anda belum memiliki point',
                                      style: GoogleFonts.rubik(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    )
                                  : Text(
                                      '${homeData.poin}',
                                      style: GoogleFonts.rubik(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w700),
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
                              (homeData.randomKode == null)
                                  ? Text('')
                                  : Text(
                                      '${homeData.randomKode}',
                                      style: GoogleFonts.rubik(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                              SizedBox(
                                height: 5,
                              ),
                              (homeData.randomKode == null)
                                  ? Text("")
                                  : SlideCountdown(
                                      duration: Duration(minutes: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0)),
                                    )
                              // Text('05/2025',
                              //     style: GoogleFonts.rubik(
                              //         fontSize: 17, color: Colors.white))
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
                      child: Column(
                        children: [
                          (listTransaction.length != 0)
                              ? SizedBox(
                                  height: 400,
                                  child: ListView.builder(
                                      itemCount: listTransaction.length,
                                      itemBuilder: ((context, index) {
                                        Transaction transaction =
                                            listTransaction[index];
                                        return Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 252, 252, 252),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ListTile(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            title: Text(transaction.namaBarang,
                                                style: GoogleFonts.rubik(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            subtitle: Text(transaction.tanggal,
                                                style: GoogleFonts.rubik(
                                                    color: Color(0xFF858585))),
                                            trailing: Text(
                                              'Rp.${transaction.harga}',
                                              style: GoogleFonts.rubik(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        );
                                      })),
                                )
                              : Center(
                                  child: Text(
                                    'No Data',
                                    style: GoogleFonts.rubik(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
