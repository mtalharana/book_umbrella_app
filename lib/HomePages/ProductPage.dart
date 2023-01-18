import 'package:book_umbrella_app/HomePages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return DetailPage();
                      }));
                    },
                    child: Image.asset('assets/images/Group 74.png')),
                  SizedBox(
                    width: 145.w,
                  ),
                  Image.asset('assets/images/Group 69.png'),
                  Image.asset('assets/images/Group 70.png'),
                  Image.asset('assets/images/Group 71.png'),
                  Image.asset('assets/images/Group 72.png'),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(child: Image.asset('assets/images/image 57.png')),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 20.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 184, 184)),
                      child: Center(
                          child: Text(
                        '48% OFF',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 66, 65, 65)),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset('assets/images/Group 68.png'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
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
                      'MRP Rs. 341 Incl. of all taxes ',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Color.fromARGB(255, 92, 92, 92),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Universe Innately just',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Cash on delivery available',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color.fromARGB(255, 92, 92, 92),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 187, 152, 112),
                        child: Image.asset("assets/images/ic24-tag.png")),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '15% Instant Discount Using AU Small\nFinance Bank Debit & Credit Cards',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Color.fromARGB(255, 92, 92, 92),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 46.w,
                      color: Color.fromARGB(255, 60, 173, 84),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 3.w,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            '4.4',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      '268 Ratings & 50  Reviews',
                      style: TextStyle(
                          color: Color.fromARGB(255, 68, 68, 68),
                          fontSize: 12.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                color: Color.fromARGB(255, 217, 217, 217),
                thickness: 7,
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Options',
                      style: TextStyle(
                          color: Color.fromARGB(255, 68, 68, 68),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Item available at',
                          style: TextStyle(
                              color: Color.fromARGB(255, 92, 92, 92),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                        Text(
                          '160019',
                          style: TextStyle(
                              color: Color.fromARGB(255, 143, 117, 86),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                        Image.asset('assets/images/vector.png')
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              SizedBox(
                height: 10.h,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
