import 'package:book_umbrella_app/HomePages/FilterPage.dart';
import 'package:book_umbrella_app/HomePages/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leadingWidth: 75,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'Fiction',
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                height: 58.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 152, 112),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset(
                        'assets/images/Mask group (9).png',
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Sort',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Image.asset(
                      'assets/images/Mask group (10).png',
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                         onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return FilterPage();
                            }));
                          },
                        child: Text(
                          'Refine',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    Image.asset('assets/images/Mask group (11).png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset('assets/images/Rectangle 92.png'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Image.asset('assets/images/Mask group (12).png')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image 72.png',
                                  ),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 140, left: 80),
                            child: Image.asset(
                              'assets/images/Group 176.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'A Room With...',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Forster',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 101, 98, 98),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Paperback',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 101, 98, 98),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '₹220',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '44%OFF',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromARGB(255, 67, 137, 129),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '3.91',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(255, 101, 98, 98),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image 73.png',
                                  ),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 140, left: 80),
                            child: Image.asset(
                              'assets/images/Group 176.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Angels Flight',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Strategic Marketing...',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 101, 98, 98),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Paperback',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 101, 98, 98),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '₹220',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '44%OFF',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromARGB(255, 67, 137, 129),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            Icon(
                              Icons.star_border_rounded,
                              color: Color.fromARGB(255, 255, 183, 0),
                              size: 12,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '3.91',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color.fromARGB(255, 101, 98, 98),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
