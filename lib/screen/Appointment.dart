import 'package:flutter/material.dart';

import '../widgets/newAppointmentCards.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointments',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF202020),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppointmentSection(context, 'New Appointments', 3),
              buildAppointmentSection(context, 'Ongoing Appointments', 4),
              buildAppointmentSection(context, 'Previous Appointments', 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppointmentSection(
      BuildContext context, String title, int itemCount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.50,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF202020),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        //const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index < itemCount) {
                return NewAppointment();
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }
}
