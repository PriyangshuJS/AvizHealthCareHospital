import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final Map<String, dynamic> data;

  AppointmentCard({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    String Cname = data["cname"] ?? "User";
    String PDuration = data["duration"] ?? "Unknown";
    String Plan = data["plan"] ?? "Unknown";

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
              // Adjust the radius based on the card height
              ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Cname,
                style: TextStyle(
                  color: Color(0xFF202020),
                  // Adjust the font size based on the card height
                ),
              ),
              SizedBox(height: 10), // Adjust as needed
              Text(
                Plan,
                style: TextStyle(
                  color: Color(0xFFF83D5B),
                  // Adjust font size
                ),
              ),
            ],
          ),
          subtitle: Text(
            PDuration,
            style: TextStyle(
              color: Color(0x99202020),
              // Adjust font size
            ),
          ),
          trailing: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_right,
              color: Color(0xFFF83D5B),
            ),
          ),
        ),
      ),
    );
  }
}
