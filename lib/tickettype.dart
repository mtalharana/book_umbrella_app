import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ContactUsScreen.dart';

class MultipleTicketType extends StatelessWidget {
  const MultipleTicketType({super.key});

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
          child: Text('Ticket Type'),
        ),
      ),
      body: SafeArea(
          child: ListView(children: [
        SizedBox(
          height: 20,
        ),
        blueContainer(
            'Early Bird General Tickets \$15.00',
            '\$15.00',
            ' + \$3.46 Fees + \$0.00 Taxes',
            'Sales end on Jan 7, 2023',
            'This RSVP guarantees entrance to The Shrine before 11pm.',
            Color.fromARGB(253, 56, 171, 216)),
        SizedBox(
          height: 20,
        ),
        blueContainer(
            'Early Bird VIP   \$30.00',
            '\$30.00',
            ' + \$2.56 Fees + \$0.00 Taxes',
            'Sales end on Jan 7, 2023',
            'This Ticket is a VIP seating Ticket',
            Color.fromARGB(253, 56, 171, 216)),
        SizedBox(
          height: 20,
        ),
        blueContainer(
            'General Admission',
            '\$20.00',
            ' + \$3.45 Fees + \$0.00 Taxes',
            '',
            'This Ticket is for General admission only',
            Color.fromARGB(255, 213, 220, 22)),
        SizedBox(
          height: 20,
        ),
        blueContainer('VIP', '\$40.00', ' + \$3.45 Fees + \$0.00 Taxes', '',
            'This is a VIP seating Ticket ', Color.fromARGB(253, 56, 171, 216)),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            smallContainer(
                'Event Coupon',
                Color.fromARGB(255, 213, 220, 22),
                Image.asset(
                  'assets/images/Vector Smart Object.png',
                  height: 20,
                )),
            smallContainer(
                'Pay From wallet ',
                Color.fromARGB(255, 56, 171, 216),
                Image.asset(
                  'assets/images/Vector Smart Object copy.png',
                  height: 20,
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Total     \$250.00',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 110, 110, 110)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return ContactUsScreen();
            }));
          },
          child: Center(
            child: Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 220, 22),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'Checkout',
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }

  Container smallContainer(
    String text,
    Color color,
    Image image,
  ) {
    return Container(
      height: 40,
      width: 170,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          image,
        ],
      ),
    );
  }

  Padding blueContainer(
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            border: Border.all(color: color),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text1,
                style: TextStyle(
                    fontSize: 20, color: color, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              color: color,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: text2,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: text3,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          )),
                    ])),
                    SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 239, 246),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 239, 246),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(text4,
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontSize: 16,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(text5,
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontSize: 12,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
