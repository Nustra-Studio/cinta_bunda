import 'package:cinta_bunda/page/account_overview.dart';
import 'package:cinta_bunda/page/transactions_history.dart';

import 'package:flutter/material.dart';

import '../widget/custom_bottom_navbar.dart';

class MainpageHome extends StatelessWidget {
  const MainpageHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            SafeArea(
                child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(
                  child: AccountOverView(),
                ),
                Center(
                  child: TransactionsHistory(),
                ),
                Center(
                  child: Text('Setting'),
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavbar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                  pageController.jumpToPage(selectedPage);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
