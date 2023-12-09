import 'package:flutter/material.dart';
import 'package:avizhealthcarehospital/screen/uderAccDetail.dart';
import 'package:avizhealthcarehospital/screen/userActivity.dart';

class UserHealth extends StatefulWidget {
  const UserHealth({Key? key}) : super(key: key);

  @override
  State<UserHealth> createState() => _UserHealthState();
}

class _UserHealthState extends State<UserHealth> {
  int detail = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Appointment Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF202020),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    detail = 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: detail == 1
                      ? Colors.grey.withOpacity(0.7)
                      : Color(0xB2D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Details'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    detail = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: detail == 0
                      ? Colors.grey.withOpacity(0.7)
                      : Color(0xB2D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Activity'),
              ),
            ],
          ),
          SizedBox(height: 16), // Adjust the spacing as needed
          detail == 1 ? UserAccDetail() : UserActivity(),
        ],
      ),
    );
  }
}
