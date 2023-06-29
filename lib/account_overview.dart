// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class AccountOverView extends StatefulWidget {
//   const AccountOverView({Key key}) : super(key: key);

//   @override
//   State<AccountOverView> createState() => _AccountOverViewState();
// }

// class _AccountOverViewState extends State<AccountOverView> {
//   double getCircleDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 2 / 3;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: Color(0xFF858585),
//           body: SafeArea(
//             child: Stack(
//               children: [
//                 Positioned(
//                   right: -getCircleDiameter(context) / 3,
//                   top: -getCircleDiameter(context) / 3,
//                   child: Container(
//                     width: getCircleDiameter(context),
//                     height: getCircleDiameter(context),
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         gradient: LinearGradient(
//                             colors: [Color(0xFFB22682), Color(0xFFFF6DA7)],
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter)),
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      backgroundColor: Color(0xFFF5F5F5).withOpacity(0.8),
      body: Stack(
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
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 86,
                      height: 98,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    Column(
                      children: [
                        Text(
                          'Good morning',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '08195648213',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
