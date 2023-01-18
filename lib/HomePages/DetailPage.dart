import 'dart:ui';

import 'package:book_umbrella_app/HomePages/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ProductPage.dart';
import 'SellersPage.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
         leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return Home();
            }));
          },
          child: Icon(Icons.arrow_back,color: Colors.black,)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.favorite_outline_rounded,color: Colors.black,),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Center(
                child: Image.asset(
              'assets/images/image 48.png',
            )),
            Center(child: Image.asset("assets/images/Group 40.png")),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Talk Bookish to Me',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'by Kate Bromley',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 115, 113, 113)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "\$20.00",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 152, 112),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(88, 115, 113, 113)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Pages",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "422",
                            style: TextStyle(
                                color: Color.fromARGB(255, 115, 113, 113)),
                          )
                        ],
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(88, 115, 113, 113),
                        indent: 13.h,
                        endIndent: 13.h,
                      ),
                      Column(
                        children: [
                          Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                size: 18,
                                color: Color.fromARGB(255, 255, 183, 0),
                              ),
                              Text(
                                "4.4",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 115, 113, 113)),
                              ),
                            ],
                          )
                        ],
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(88, 115, 113, 113),
                        indent: 13.h,
                        endIndent: 13.h,
                      ),
                      Column(
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                                color: Color.fromARGB(255, 115, 113, 113)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return SellersPage();
                  }));
                },
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromARGB(255, 187, 152, 112)),
                  child: Center(
                    child: Text(
                      'View all Sellers',
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nAliquam malesuada magna vitae molestie egestas. Nam\nconsequat est porttitor magna congue sollicitudin.',
                style: TextStyle(color: Color.fromARGB(255, 115, 113, 113)),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(137, 187, 152, 112),
                      child: Image.asset("assets/images/Mask group (8).png")),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return ProductPage();
                      }));
                    },
                    child: Container(
                      height: 50.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 187, 152, 112),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
