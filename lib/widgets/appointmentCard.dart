import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height / 8;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius:
                cardHeight * 0.4, // Adjust the radius based on the card height
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Akruti Agarwal',
                style: TextStyle(
                  color: Color(0xFF202020),
                  fontSize: cardHeight *
                      0.14, // Adjust the font size based on the card height
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: cardHeight * 0.05),
              Text(
                'General care plan',
                style: TextStyle(
                  color: Color(0xFFF83D5B),
                  fontSize: cardHeight * 0.1,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          subtitle: Text(
            'Duration: 2 months',
            style: TextStyle(
              color: Color(0x99202020),
              fontSize: cardHeight * 0.08,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
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
