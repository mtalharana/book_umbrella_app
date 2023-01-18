import 'package:book_umbrella_app/HomePages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellersPage extends StatelessWidget {
  const SellersPage({super.key});

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
                return DetailPage();
              }));
            },
            child: Image.asset('assets/images/Group 74.png')),
          toolbarHeight: 67,
          shadowColor: Color.fromARGB(255, 246, 246, 246),
          elevation: 4,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'Sellers',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/Group 69.png'),
                  Image.asset('assets/images/Group 72.png'),
                ],
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Image.asset('assets/images/image 60.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Pincode:   160019',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color.fromARGB(255, 101, 98, 98)),
                  ),
                  SizedBox(
                    width: 85.w,
                  ),
                  Container(
                    height: 28.h,
                    width: 67.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 187, 152, 112),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      "CHANGE",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
              Divider(
                height: 0,
                thickness: 2,
                color: Color.fromARGB(255, 187, 152, 112),
                indent: 140,
                endIndent: 105,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 65.h,
                width: double.infinity,
                color: Color.fromARGB(255, 246, 246, 246),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Column(
                          children: [
                            Text(
                              "2 Sellers available",
                              style: TextStyle(
                                  color: Color.fromARGB(253, 101, 98, 98)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sort by",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 161, 159, 159)),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Default View",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 101, 98, 98)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  height: 50.h,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Group 81.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 27, top: 38),
                        child: Image.asset('assets/images/Group 91.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 65),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sold by",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 161, 159, 159)),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Vinay",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 101, 98, 98)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      'Rs.183',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Rs.341',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.sp,
                        color: Color.fromARGB(255, 153, 153, 153),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color.fromARGB(255, 101, 98, 98),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'COD is available',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 101, 98, 98)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color.fromARGB(255, 101, 98, 98),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Delivery in 3-5 days',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 101, 98, 98)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Text(
                      'Delivery Charges',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 161, 159, 159)),
                    ),
                    Text(
                      '(FREE)',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 187, 152, 112)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 54.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 241, 241, 241)),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 54.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 187, 152, 112)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Subtract.png'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'BUY NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 17,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  height: 50.h,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Group 81.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 27, top: 38),
                        child: Image.asset('assets/images/Group 91.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13, left: 65),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sold by",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 161, 159, 159)),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "MEERA TRADERS",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 101, 98, 98)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      'Rs.227',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Rs.341',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12.sp,
                        color: Color.fromARGB(255, 153, 153, 153),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color.fromARGB(255, 101, 98, 98),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'COD is available',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 101, 98, 98)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color.fromARGB(255, 101, 98, 98),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Delivery in 3-5 days',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 101, 98, 98)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Row(
                  children: [
                    Text(
                      'Delivery Charges',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 161, 159, 159)),
                    ),
                    Text(
                      '(FREE)',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(255, 187, 152, 112)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 54.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 241, 241, 241)),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 54.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 187, 152, 112)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Subtract.png'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'BUY NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
