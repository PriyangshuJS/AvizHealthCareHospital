import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/newAppointmentCards.dart';
import '../widgets/acceptedAppointment.dart';

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
              buildAppointmentSection(context, 'New Appointments'),
              buildAppointmentSection(context, 'Ongoing Appointments'),
              buildAppointmentSection(context, 'Previous Appointments'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppointmentSection(BuildContext context, String title) {
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
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance.collection("AppDetail").get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  List<DocumentSnapshot> appointments = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: appointments.length,
                    itemBuilder: (context, index) {
                      if (title == 'New Appointments') {
                        return NewAppointment(
                          data: appointments[index],
                        );
                      } else {
                        return AcceptedAppointment(
                          data: appointments[index],
                        );
                      }
                    },
                  );
                }
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
