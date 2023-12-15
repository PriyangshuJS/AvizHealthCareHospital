import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/addressCard.dart';
import '../widgets/conformButton.dart';

class AppointmentDetail extends StatefulWidget {
  String currentPname;
  AppointmentDetail({super.key, required this.currentPname});

  @override
  State<AppointmentDetail> createState() => _AppointmentDetailState();
}

class _AppointmentDetailState extends State<AppointmentDetail> {
  final CollectionReference _appDetail =
      FirebaseFirestore.instance.collection('AppDetail');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointments Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF202020),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: _appDetail
              .where('pname', isEqualTo: widget.currentPname)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Text('No data available');
            }

            final data =
                snapshot.data!.docs.first.data() as Map<String, dynamic>;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Enter OTP',
                          style: TextStyle(
                            color: Color(0xFFF83D5B),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Container(
                          width: 123,
                          height: 39,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF3F3F3),
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
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      data["visit"] ?? "Unknown",
                      style: TextStyle(
                        color: Color(0xFFF83D5B),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        buildUserRow(
                          'Patient Name',
                          data["pname"] ?? "Unknown",
                        ),
                        buildUserRow(
                          'Relation',
                          data["relation"] ?? "Unknown",
                        ),
                        buildUserRow('Age', data["age"] ?? "Unknown"),
                        buildUserRow(
                          'Gender',
                          data["gender"] ?? "Unknown",
                        ),
                        buildUserRow(
                          'Duration',
                          data["duration"] ?? "Unknown",
                        ),
                        buildUserRow(
                          'Issue',
                          data["issue"] ?? "Unknown",
                        ),
                        SizedBox(height: 10),
                        buildUserRow(
                          'Service Opted',
                          data["services"] ?? "Unknown",
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ConformButton(conformText: "Assessment File"),
                    const SizedBox(height: 30),
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Color(0xFFF83D5B),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 20),
                    AddressCard(
                        pname: data["pname"] ?? "Unknown",
                        address: data["address"] ?? "Unknown"),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget buildUserRow(String label, String username) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(
            '$label:',
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 3,
          child: Text(
            username,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
