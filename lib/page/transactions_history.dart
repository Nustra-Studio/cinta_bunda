import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsHistory extends StatelessWidget {
  const TransactionsHistory({Key key}) : super(key: key);

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
  List<String> items = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DES",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xFF858585).withOpacity(0.8),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.rubik(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('2023',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF858585).withOpacity(0.8))),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            current = index;
                          });
                        }),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 50,
                          height: 15,
                          decoration: BoxDecoration(
                              color: current == index
                                  ? Color.fromARGB(255, 230, 230, 230)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              items[index],
                              style: GoogleFonts.rubik(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            Container(
              width: double.infinity,
              height: 550,
              child: SingleChildScrollView(
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text("Tue 12.10.2023",
                            style: GoogleFonts.rubik(color: Color(0xFF858585))),
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
            )
          ],
        ),
      ),
    );
  }
}
