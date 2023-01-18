import 'dart:async';

import 'package:book_umbrella_app/LoginPages/loginpage.dart';
import 'package:book_umbrella_app/SplashScreens/Splash3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
   @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(context, MaterialPageRoute(builder: (_) {
        return LoginPage();
      })),
    );
  }
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: ListView(
          children: [
            Center(child: Image.asset("assets/images/Untitled-1 3.png")),
            SizedBox(
              height: 25.h,
            ),
            Center(child: Image.asset("assets/images/Mask group.png")),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                'Find the book you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
            ),
            Center(
              child: Text(
                'like the most',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
              ),
            ),
             SizedBox(
             height: 30.h,
            ),
            Center(
              child: Text(
                'It\'s now easier than ever to search for popular\nbooks worldwide. Just open the prebook app,\n           and you\'re ready to read the books.',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Center(
              child: Image.asset("assets/images/Group 119.png"),
            )
          ],
        ),
      ),
    );
  }
}
