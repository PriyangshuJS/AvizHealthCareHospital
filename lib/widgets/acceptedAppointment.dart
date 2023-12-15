import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../screen/AppointmentDetail.dart';

class AcceptedAppointment extends StatefulWidget {
  final DocumentSnapshot data;
  AcceptedAppointment({super.key, required this.data});

  @override
  State<AcceptedAppointment> createState() => _AcceptedAppointmentState();
}

class _AcceptedAppointmentState extends State<AcceptedAppointment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  // Adjust the radius based on the card height
                  ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.data["pname"] ?? "Unkown",
                      style: TextStyle(
                        color: Color(0xFF202020),
                      ),
                    ),
                    Text(
                      widget.data["visit"] ?? "Unkown",
                      style: TextStyle(
                        color: Color(0xFFF83D5B),
                      ),
                    ),
                    Text(
                      widget.data["duration"] ?? "Unkown",
                      style: TextStyle(
                        color: Color(0x99202020),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppointmentDetail(
                            currentPname: widget.data["pname"],
                          ))),
              icon: Icon(
                Icons.arrow_right,
                color: Color(0xFFF83D5B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
