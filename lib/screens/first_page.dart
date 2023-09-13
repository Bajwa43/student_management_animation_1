import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

// import 'package:student_managment_app_screens/extra/ClipperForFirstPage.dart';
// import 'package:student_managment_app_screens/back_side.dart';
// import 'package:student_managment_app_screens/extra/shapeMaker.dart';
// import 'package:student_managment_app_screens/extra/shapeMakerwidget.dart';
// import 'package:student_managment_app_screens/front_Side.dart';

import 'back_side_page.dart';

import 'front_Side_page.dart';

class First_page extends StatelessWidget {
  const First_page({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return const Scaffold(
      backgroundColor: Color.fromARGB(250, 21, 18, 46),
      // backgroundColor: Colors.teal.shade100,
      body: Stack(
        children: [
          AnimatedBackGround(),

          // ...
          FrontSideOfFirstPage(),
        ],
      ),
    );
  }
}
