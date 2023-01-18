import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/images/Group_163959__3_-removebg-preview.png',
            fit: BoxFit.fill,
          ),
        ),
        leadingWidth: 20,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 10),
          child: Icon(Icons.menu),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 10),
          child: Text('Contact Us',style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
