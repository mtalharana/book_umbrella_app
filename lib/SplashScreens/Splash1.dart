// import 'dart:async';

// import 'package:book_umbrella_app/SplashScreens/Splash2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Splash1 extends StatefulWidget {
//   const Splash1({super.key});

//   @override
//   State<Splash1> createState() => _Splash1State();
// }

// class _Splash1State extends State<Splash1> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//       const Duration(seconds: 4),
//       () => Navigator.push(context, MaterialPageRoute(builder: (_) {
//         return Splash2();
//       })),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//       var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return ScreenUtilInit(
//       builder: (context, child) => Scaffold(
//         body: ListView(
//           children: [
//             Center(child: Image.asset("assets/images/image 66.png")),
//             Center(child: Image.asset("assets/images/Group 118.png")),
//             SizedBox(
//             height: 20.h,
//             ),
//             Center(
//               child: Text(
//                 'Find the book you',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
//               ),
//             ),
//             Center(
//               child: Text(
//                 'like the most',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
//               ),
//             ),
//             SizedBox(
//              height: 30.h,
//             ),
//             Center(
//               child: Text(
//                 'It\'s now easier than ever to search for popular\nbooks worldwide. Just open the prebook app,\n           and you\'re ready to read the books.',
//                 style: TextStyle(fontSize: 14.sp),
//               ),
//             ),
//             SizedBox(
//               height: 35.h,
//             ),
//             Center(
//               child: Image.asset("assets/images/Group 119.png"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
