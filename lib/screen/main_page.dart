import 'package:avizhealthcarehospital/widgets/appointmentCard.dart';
import 'package:avizhealthcarehospital/widgets/reviewCard.dart';
import 'package:avizhealthcarehospital/widgets/viewall.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              leading: CircleAvatar(
                radius: 50,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      color: Color(0xFFF83D5B),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Naresh Trehan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              subtitle: Text(
                'Verification pending',
                style: TextStyle(
                  color: Color(0xFFAD2125),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              trailing: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: Color(0xFFF83D5B),
                  )),
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 10,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFEEF1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Total earnings"),
                    Text("2500"),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 10,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFEEF1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.timer_outlined),
                    Text("2500"),
                  ],
                ),
              ),
            ]),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ViewAll(title: "Upcoming Appointments"),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount:
                          10, // Set the total number of AppointmentCard instances you want to display
                      itemBuilder: (context, index) {
                        if (index < 5) {
                          return AppointmentCard();
                        } else {
                          return SizedBox
                              .shrink(); // Empty widget for the remaining cards
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Reviews:',
              style: TextStyle(
                color: Color(0xFFF83D5B),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: 5),
            ReviewCard(),
            SizedBox(height: 10),
            ReviewCard(),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: null,
                child: Text(
                  'View All',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF83D5B),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 255, 48, 92),
                    height: 0.15,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
