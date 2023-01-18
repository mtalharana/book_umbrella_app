import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

var selected = 0;

class _FilterPageState extends State<FilterPage> {
  bool selectall = false;
  bool neww = false;
  bool likenew = false;
  bool acceptable = false;
  bool used = false;
  bool verygood = false;
  bool good = false;

  bool selectall1 = false;
  bool studyguide = false;
  bool international = false;
  bool normal = false;
  bool teachers = false;
  bool workbook = false;
  bool librarycopy = false;

  bool selectall2 = false;

  void clearall() {
    setState(() {
      selectall = false;
      neww = false;
      likenew = false;
      acceptable = false;
      used = false;
      verygood = false;
      good = false;

      selectall1 = false;
      studyguide = false;
      international = false;
      normal = false;
      teachers = false;
      workbook = false;
      librarycopy = false;

      selectall2 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Filters',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Sort By',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                    InkWell(
                      onTap: clearall,
                      child: Text(
                        'Clear All',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 229, 94, 94),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Color.fromARGB(255, 161, 159, 159),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 468.h,
                    width: 155.w,
                    color: Color.fromARGB(255, 245, 245, 245),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 55.h,
                          width: 155.w,
                          color: selected == 0
                              ? Colors.white
                              : Color.fromARGB(255, 245, 245, 245),
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selected = 0;
                                });
                              },
                              child: Text(
                                "Condition",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              )),
                        ),
                        Divider(
                          height: 0,
                          color: Color.fromARGB(102, 161, 159, 159),
                        ),
                        Container(
                          height: 55.h,
                          width: 155.w,
                          color: selected == 1
                              ? Colors.white
                              : Color.fromARGB(255, 245, 245, 245),
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selected = 1;
                                });
                              },
                              child: Text(
                                "Type",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              )),
                        ),
                        Divider(
                          height: 0,
                          color: Color.fromARGB(102, 161, 159, 159),
                        ),
                        Container(
                          height: 55.h,
                          width: 155.w,
                          color: selected == 2
                              ? Colors.white
                              : Color.fromARGB(255, 245, 245, 245),
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selected = 2;
                                });
                              },
                              child: Text(
                                "ISBN",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              )),
                        ),
                        Divider(
                          height: 0,
                          color: Color.fromARGB(102, 161, 159, 159),
                        ),
                      ],
                    ),
                  ),
                  selected == 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.5)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    activeColor:
                                        Color.fromARGB(255, 187, 152, 112),
                                    value: this.selectall,
                                    onChanged: (selectall) {
                                      setState(() {
                                        this.selectall = selectall!;
                                        this.neww = selectall;
                                        this.likenew = selectall;
                                        this.acceptable = selectall;
                                        this.used = selectall;
                                        this.verygood = selectall;
                                        this.good = selectall;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Select All',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                height: 180.h,
                                width: 143.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(127, 161, 159, 159)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: [
                                      Transform.translate(
                                        offset: Offset(-10, 0),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          // contentPadding: EdgeInsets.only(right: 20),
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'New',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.neww,
                                          onChanged: (neww) {
                                            setState(() {
                                              this.neww = neww!;
                                            });
                                          },
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(-10, -25),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'Like New',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.likenew,
                                          onChanged: (likenew) {
                                            setState(() {
                                              this.likenew = likenew!;
                                            });
                                          },
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(15, -45),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          visualDensity: VisualDensity.compact,
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'Acceptable',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.acceptable,
                                          onChanged: (acceptable) {
                                            setState(() {
                                              this.acceptable = acceptable!;
                                            });
                                          },
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(15, -65),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          visualDensity: VisualDensity.compact,
                                          // contentPadding: EdgeInsets.only(right: 20),
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'Used',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.used,
                                          onChanged: (used) {
                                            setState(() {
                                              this.used = used!;
                                            });
                                          },
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(15, -85),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          visualDensity: VisualDensity.compact,
                                          // contentPadding: EdgeInsets.only(right: 20),
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'Very Good',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.verygood,
                                          onChanged: (verygood) {
                                            setState(() {
                                              this.verygood = verygood!;
                                            });
                                          },
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: Offset(15, -105),
                                        child: CheckboxListTile(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 187, 152, 112)),
                                          checkboxShape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          visualDensity: VisualDensity.compact,
                                          // contentPadding: EdgeInsets.only(right: 20),
                                          activeColor: Color.fromARGB(
                                              255, 187, 152, 112),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: Transform.translate(
                                            offset: Offset(-15, 0),
                                            child: Text(
                                              'Good',
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ),
                                          value: this.good,
                                          onChanged: (good) {
                                            setState(() {
                                              this.good = good!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : selected == 1
                          ? Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        side: BorderSide(
                                            width: 1,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        activeColor:
                                            Color.fromARGB(255, 187, 152, 112),
                                        value: this.selectall1,
                                        onChanged: (selectall1) {
                                          setState(() {
                                            this.selectall1 = selectall1!;
                                            this.studyguide = selectall1;
                                            this.international = selectall1;
                                            this.normal = selectall1;
                                            this.teachers = selectall1;
                                            this.workbook = selectall1;
                                            this.librarycopy = selectall1;
                                          });
                                        },
                                      ),
                                      Text(
                                        'Select All',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Container(
                                    height: 199.h,
                                    width: 165.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                127, 161, 159, 159)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Transform.translate(
                                            offset: Offset(-20, 0),
                                            child: CheckboxListTile(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              // contentPadding: EdgeInsets.only(right: 20),
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  EdgeInsets.only(left: 15),
                                              title: Transform.translate(
                                                offset: Offset(-20, 0),
                                                child: Text(
                                                  'Study Guide',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.studyguide,
                                              onChanged: (studyguide) {
                                                setState(() {
                                                  this.studyguide = studyguide!;
                                                });
                                              },
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-10, -25),
                                            child: CheckboxListTile(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  EdgeInsets.only(left: 5),
                                              title: Transform.translate(
                                                offset: Offset(-20, 0),
                                                child: Text(
                                                  'International Edition',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.international,
                                              onChanged: (international) {
                                                setState(() {
                                                  this.international =
                                                      international!;
                                                });
                                              },
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, -45),
                                            child: CheckboxListTile(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              title: Transform.translate(
                                                offset: Offset(-15, 0),
                                                child: Text(
                                                  'Normal',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.normal,
                                              onChanged: (normal) {
                                                setState(() {
                                                  this.normal = normal!;
                                                });
                                              },
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, -65),
                                            child: CheckboxListTile(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              // contentPadding: EdgeInsets.only(right: 20),
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              contentPadding:
                                                  EdgeInsets.only(left: 15),
                                              title: Transform.translate(
                                                offset: Offset(-15, 0),
                                                child: Text(
                                                  'Teachers Edition',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.teachers,
                                              onChanged: (teachers) {
                                                setState(() {
                                                  this.teachers = teachers!;
                                                });
                                              },
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, -85),
                                            child: CheckboxListTile(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              // contentPadding: EdgeInsets.only(right: 20),
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              title: Transform.translate(
                                                offset: Offset(-15, 0),
                                                child: Text(
                                                  'Work Book',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.workbook,
                                              onChanged: (workbook) {
                                                setState(() {
                                                  this.workbook = workbook!;
                                                });
                                              },
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(-20, -105),
                                            child: CheckboxListTile(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Color.fromARGB(
                                                      255, 187, 152, 112)),
                                              checkboxShape:
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              // contentPadding: EdgeInsets.only(right: 20),
                                              activeColor: Color.fromARGB(
                                                  255, 187, 152, 112),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              title: Transform.translate(
                                                offset: Offset(-15, 0),
                                                child: Text(
                                                  'Library Copy',
                                                  style: TextStyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                              value: this.librarycopy,
                                              onChanged: (librarycopy) {
                                                setState(() {
                                                  this.librarycopy =
                                                      librarycopy!;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      side: BorderSide(
                                          width: 1.w,
                                          color: Colors.black.withOpacity(0.5)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      activeColor:
                                          Color.fromARGB(255, 187, 152, 112),
                                      value: this.selectall2,
                                      onChanged: (selectall2) {
                                        setState(() {
                                          this.selectall2 = selectall2!;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Select All',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 31.h,
                                    width: 180.w,
                                    child: TextFormField(
                                      toolbarOptions: ToolbarOptions(
                                          selectAll: true,
                                          copy: true,
                                          cut: true,
                                          paste: true),
                                      decoration: InputDecoration(
                                        // contentPadding: EdgeInsets.all(10),
                                        prefixIcon: Container(
                                          width: 10.w,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 124, 97, 65),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                              )),
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          ),
                                        ),
                                        iconColor:
                                            Color.fromARGB(255, 165, 165, 165),
                                        hintText:
                                            "Search by title/isbn10/isbn13...",
                                        hintStyle: TextStyle(
                                            fontSize: 10.sp,
                                            color: Color.fromARGB(
                                                255, 154, 153, 153)),
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 165, 165, 165),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 165, 165, 165),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                  Container()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
