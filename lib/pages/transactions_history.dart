import 'package:cinta_bunda/models/transaction_model.dart';
import 'package:cinta_bunda/providers/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
  List items = [
    {'bulan': "JAN", 'angka': "1"},
    {'bulan': "FEB", 'angka': "2"},
    {'bulan': "MAR", 'angka': "3"},
    {'bulan': "APR", 'angka': "4"},
    {'bulan': "MAY", 'angka': "5"},
    {'bulan': "JUN", 'angka': "6"},
    {'bulan': "JUL", 'angka': "7"},
    {'bulan': "AUG", 'angka': "8"},
    {'bulan': "SEP", 'angka': "9"},
    {'bulan': "OCT", 'angka': "10"},
    {'bulan': "NOV", 'angka': "11"},
    {'bulan': "DES", 'angka': "12"},
  ];

  TransactionData transactionData = TransactionData();
  TransactionProvider transactionProvider = TransactionProvider();
  List<ListTransaksi> listTransaction = [];

  fetchData(var bulan, var tahun) async {
    transactionData = await transactionProvider.fetchData(bulan, tahun);
    listTransaction = transactionData.transaksi;
    setState(() {});
  }

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  int current = 0;

  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('y');
    String formattedDate = formatter.format(now);

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
                    child: Text('${formattedDate}',
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
                            fetchData(
                                items[index]["angka"], '${formattedDate}');
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
                              items[index]["bulan"],
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
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    (listTransaction.length < 0)
                        ? SizedBox(
                            height: 600,
                            child: ListView.builder(
                                itemCount: listTransaction.length,
                                itemBuilder: ((context, index) {
                                  ListTransaksi transaction =
                                      listTransaction[index];
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: ListTile(
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      title: Text(transaction.namaBarang,
                                          style: GoogleFonts.rubik(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
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
      ),
    );
  }
}
