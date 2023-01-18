import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../HomePages/Homepage.dart';
import '../tickettype.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  int screenState = 0;
  String otpPin = " ";
  String countryDial = "+91";
  String verID = " ";

  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User user = result.user!;

      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      }
      // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }

  final FacebookLogin facebookSignIn = FacebookLogin();
  void signInWithFacebook() async {
    final result = await facebookSignIn.logIn(customPermissions: ['email']);

    if (result.accessToken != null) {
      final authResult = await FirebaseAuth.instance
          .signInWithCredential(
            FacebookAuthProvider.credential(result.accessToken!.token),
          )
          .whenComplete(
              () => Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Home();
                  })));
      final user = authResult.user;
      print('Signed in as ${user!.displayName}');
    }
  }

  Future<void> verifyPhone(String number) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number,
      timeout: Duration(seconds: 10),
      verificationCompleted: (PhoneAuthCredential credential) {
        showSnackBarText("Authentication Completed!");
      },
      verificationFailed: (FirebaseAuthException e) {
        showSnackBarText("Authentication Failed!");
      },
      codeSent: (String verificationId, int? resendToken) {
        showSnackBarText("OTP Sent!");
        verID = verificationId;
        setState(() {
          screenState = 1;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        showSnackBarText("Timeout!");
      },
    );
  }

  Future<void> verifyOTP() async {
    await FirebaseAuth.instance
        .signInWithCredential(PhoneAuthProvider.credential(
            verificationId: verID, smsCode: otpPin))
        .whenComplete(
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) => WillPopScope(
        onWillPop: () {
          setState(() {
            screenState = 0;
          });
          return Future.value(false);
        },
        child: Scaffold(
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/images/Mask group.png'),
              ),
              SizedBox(
                height: 100.h,
              ),
              Column(
                children: [
                  screenState == 0 ? stateRegister() : stateOTP(),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: GestureDetector(
                      onTap: () {
                        if (screenState == 0) {
                          if (phoneController.text.isEmpty) {
                            showSnackBarText("Phone number is empty!");
                          } else {
                            verifyPhone(countryDial + phoneController.text);
                          }
                        } else {
                          if (otpPin.length >= 6) {
                            verifyOTP();
                          } else {
                            showSnackBarText("Enter OTP Correctly!");
                          }
                        }
                      },
                      child: Container(
                        height: 46.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  offset: Offset(0, 3))
                            ],
                            color: Color.fromARGB(255, 187, 152, 112),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          'Continue',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Well\' send otp for verification',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      signInWithFacebook();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Container(
                        height: 46.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  offset: Offset(0, 3))
                            ],
                            color: Color.fromARGB(255, 187, 152, 112),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Mask group (13).png'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Log in with Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      signup(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Container(
                        height: 46.h,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  offset: Offset(0, 3))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/image 37.png'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Log in with Google',
                              style: TextStyle(
                                  color: Color.fromARGB(181, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBarText(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  Widget stateRegister() {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: IntlPhoneField(
              flagsButtonPadding: EdgeInsets.all(12),
              showDropdownIcon: false,
              controller: phoneController,
              initialValue: countryDial,
              onCountryChanged: (country) {
                setState(
                  () {
                    countryDial = "+" + country.dialCode;
                  },
                );
              },
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 165, 165, 165),
                    ),
                  ),
                  filled: true,
                  hintText: 'Phone Number',
                  fillColor: Color.fromARGB(199, 198, 193, 193),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(199, 198, 193, 193),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                  )),
            )),
      ],
    );
  }

  Widget stateOTP() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: "We just sent a code to ",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: countryDial + phoneController.text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "\n Enter the code here and we can continue!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                  ))
            ])),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: PinCodeTextField(
            appContext: context,
            length: 6,
            onChanged: (value) {
              setState(
                () {
                  otpPin = value;
                },
              );
              print(otpPin);
            },
            pinTheme: PinTheme(
                activeColor: Colors.blue,
                selectedColor: Colors.blue,
                inactiveColor: Colors.black26),
          ),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Didn't receive the code? ",
              style: TextStyle(color: Colors.black87, fontSize: 12.sp)),
          WidgetSpan(
              child: GestureDetector(
            onTap: () {
              setState(() {
                screenState = 0;
              });
              print('Resend');
            },
            child: Text('Resend',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold)),
          ))
        ]))
      ],
    );
  }
}
