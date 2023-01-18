import 'package:book_umbrella_app/LoginPages/loginpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'DetailPage.dart';
import 'ListingPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  // final PageStorageBucket bucket = PageStorageBucket();
  late TabController tabController;
  final List<Widget> mainScreens = [
    HomeScreen(),
    CategoryScreen(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    CartPage(),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: TabBarView(
            controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            children: mainScreens,
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Material(
            child: BottomAppBar(
              // notchMargin: 8,
              shape: CircularNotchedRectangle(),
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'assets/images/image 67.png',
                      ),
                      size: 20,
                    ),
                    text: 'Category',
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                    text: 'Search',
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_cart_outlined),
                    text: 'Cart',
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline_rounded),
                    text: 'Account',
                  )
                ],
                labelStyle:
                    TextStyle(fontSize: 09.sp, fontWeight: FontWeight.bold),
                labelColor: Color.fromARGB(255, 124, 97, 65),
                unselectedLabelColor: Colors.black,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Color.fromARGB(255, 124, 97, 65),
                controller: tabController,
                indicator: UnderlineTabIndicator(
                  insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 75.0),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 124, 97, 65), width: 3),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FacebookLogin facebookSignIn = FacebookLogin();

  final FirebaseAuth auth = FirebaseAuth.instance;

  signOut() async {
    await auth.signOut();
    await facebookSignIn.logOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: ListView(
          padding: EdgeInsets.only(bottom: 5),
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/Group 192.png"),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    "assets/images/Mask group.png",
                    width: 200.w,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                      onTap: () {
                        signOut();
                      },
                      child: Icon(Icons.logout_rounded)),
                ),
                Image.asset('assets/images/Group 87.png')
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                toolbarOptions: ToolbarOptions(
                    selectAll: true, copy: true, cut: true, paste: true),
                decoration: InputDecoration(
                  suffixIcon: Image.asset('assets/images/Mask group (1).png'),
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(Icons.search,
                      color: Color.fromARGB(255, 165, 165, 165)),
                  iconColor: Color.fromARGB(255, 165, 165, 165),
                  hintText: "Search",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 154, 153, 153)),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 165, 165, 165),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 165, 165, 165),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 15.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/slider 016.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 17.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                // 4th Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/slider 020.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 19 (1).png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 85.0.h,
                enlargeCenterPage: false,
                autoPlay: false,
                // aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
               padEnds: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.22.w,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              'assets/images/image 69.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 14.sp,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 187, 152, 112)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            CarouselSlider(
              items: [
                //1st Image of Slider
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return DetailPage();
                    }));
                  },
                  child: Container(
                    // margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Group 22.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 23.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 24.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0.h,
                enlargeCenterPage: false,
                autoPlay: false,
                padEnds: false,
                // aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.33.w,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Trending',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 14.sp,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 187, 152, 112)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Group 32.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  // margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 33.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 120.0.h,
                enlargeCenterPage: false,
                autoPlay: false,
                padEnds: false,
                // aspectRatio: 16 / 9,
                pageSnapping: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.51.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          shadowColor: Color.fromARGB(255, 246, 246, 246),
          elevation: 4,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'CATEGORIES',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 510.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        // color: Colors.pinkAccent.withOpacity(0.18),
                        color: Color.fromARGB(153, 187, 152, 112),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset('assets/images/Mask group (2).png'),
                        Text(
                          'Sports &\n Fitness',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 187, 152, 112),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset('assets/images/Mask group (3).png'),
                        Text(
                          '    Car & \nMotorbike',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 187, 152, 112),
                        ),
                        Image.asset('assets/images/Mask group (4).png'),
                        Text(
                          '    Office\nSupplies &\n Stationery',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 187, 152, 112),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset('assets/images/Mask group (5).png'),
                        Text(
                          'Food & \n Drinks',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 187, 152, 112),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Image.asset('assets/images/Mask group (6).png'),
                        Text(
                          'Pet Supplies',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Divider(
                          color: Color.fromARGB(255, 187, 152, 112),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset('assets/images/Mask group (7).png'),
                        Text(
                          '   Musical\nInstruments',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fiction & Non Fiction",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 187, 152, 112)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/image 19.png',
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Image.asset(
                              'assets/images/image-removebg-preview (1) 1.png',
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/image 21.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Children 's Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            "Motivational\n      Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 35.w,
                          ),
                          Text(
                            "Novels",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/image 22.png',
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Image.asset(
                              'assets/images/image 23.png',
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/image 24.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Religious Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            "  Economics\n& Commerce",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "View All Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Academic Books",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 187, 152, 112)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/image 25.png',
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/image 27.png',
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/image 26.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "       School\nTextbooks & G...",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            "All Academic\n      Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "University Books\n      & Guides",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/image 28.png',
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Image.asset(
                            'assets/images/image 29.png',
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            'assets/images/image 30.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Reference\n   Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "UPSC & Central\nExam Preparat...",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "Competitive\nExams Prepare...",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/image 31.png'),
                          Text(
                            "Books",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 67,
          shadowColor: Color.fromARGB(255, 246, 246, 246),
          elevation: 4,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: TextFormField(
              toolbarOptions: ToolbarOptions(
                  selectAll: true, copy: true, cut: true, paste: true),
              decoration: InputDecoration(
                suffixIcon: Image.asset('assets/images/Mask group (1).png'),
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(Icons.search,
                    color: Color.fromARGB(255, 165, 165, 165)),
                iconColor: Color.fromARGB(255, 165, 165, 165),
                hintText: "Search",
                hintStyle: TextStyle(color: Color.fromARGB(255, 154, 153, 153)),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 165, 165, 165),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 165, 165, 165),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ListingPage();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 47.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(153, 187, 152, 112)),
                    child: Center(
                        child: Text(
                      'Proceed to Buy (2 items)',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 223, 223, 223),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/image 64.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Marketing Management  |\nIndian Case Studies Included...\nby G.Shainesh Philip Kotler,\nKevin lane Keller, Alexander\nChernev, Jagdish N.Sheth\nPaperback',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '₹920',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Only 2 left. Order now.',
                          style: TextStyle(
                              color: Color.fromARGB(255, 171, 3, 3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Sold by',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 101, 98, 98),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Garg Brothers, Prayagraj',
                              style: TextStyle(
                                  color: Color.fromARGB(253, 67, 137, 129),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(153, 187, 152, 112),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6))),
                        child: Image.asset('assets/images/image 65.png')),
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 223, 223),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(153, 187, 152, 112),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6))),
                        child: Icon(
                          Icons.add,
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        height: 36.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromARGB(255, 175, 175, 175),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Delete",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        height: 36.h,
                        width: 86.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromARGB(255, 175, 175, 175),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Save for later",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Container(
                        height: 36.h,
                        width: 131.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromARGB(255, 175, 175, 175),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "See more like this",
                            style: TextStyle(
                                color: Color.fromARGB(253, 101, 98, 98),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 223, 223, 223),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/image 63.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The  Classification Of Mental\nDisorders by John E. Cooper &\nNorman Sartorius',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Paperback ',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '₹920',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Only 2 left. Order now.',
                          style: TextStyle(
                              color: Color.fromARGB(255, 171, 3, 3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'Sold by',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 101, 98, 98),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Garg Brothers, Prayagraj',
                              style: TextStyle(
                                  color: Color.fromARGB(253, 67, 137, 129),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(153, 187, 152, 112),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6))),
                        child: Image.asset('assets/images/image 65.png')),
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 223, 223),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        height: 36.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(153, 187, 152, 112),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6))),
                        child: Icon(
                          Icons.add,
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        height: 36.h,
                        width: 52.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromARGB(255, 175, 175, 175),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Delete",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                        height: 36.h,
                        width: 86.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color.fromARGB(255, 175, 175, 175),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Save for later",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
