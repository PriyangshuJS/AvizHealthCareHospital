import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../screen/AppointmentDetail.dart';

class NewAppointment extends StatefulWidget {
  final DocumentSnapshot data;
  const NewAppointment({Key? key, required this.data});

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: isExpanded ? 120 : 80,
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
                child: CircleAvatar(),
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
              isExpanded
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            print("Approved");
                          },
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print("Declined");
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  : IconButton(
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
      ),
    );
  }
}
