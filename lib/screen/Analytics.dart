import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/detailHeader.dart';
import '../widgets/tabedContainer.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Analytics',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
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
                width: MediaQuery.of(context).size.width / 4,
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
                width: MediaQuery.of(context).size.width / 4,
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
            ],
          ),
          SizedBox(height: 20),
          DetailBar(title: "Over All"),
          SizedBox(height: 10),
          ContainerWithTabs(),
          SizedBox(height: 20),
          DetailBar(title: "Reach"),
          SizedBox(height: 10),
          ContainerWithTabs(),
          SizedBox(height: 20),
          DetailBar(title: "Revenue"),
          SizedBox(height: 10),
          ContainerWithTabs(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Patient',
                style: TextStyle(
                  color: Color(0xFF0D0D0D),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 4),
              Text(
                'Reviews',
                style: TextStyle(
                  color: Color(0xFF0D0D0D),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Analytics')
                  .doc('BQ4SFtOPiaZY3zbRjXE2')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                final data = snapshot.data?.data() as Map<String, dynamic>;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 7,
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
                          Text(data['tearning'] ?? 'Unknown'),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 7,
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
                          Text(data['tsaving'] ?? 'Unknown'),
                        ],
                      ),
                    ),
                  ],
                );
              }),
          SizedBox(height: 20),
          StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Analytics')
                  .doc('BQ4SFtOPiaZY3zbRjXE2')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                final data = snapshot.data?.data() as Map<String, dynamic>;
                var maleno = int.parse(data['male'] ?? '0');
                var femaleno = int.parse(data['female'] ?? '0');
                return Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFEEF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${maleno + femaleno}\nTotal',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Male : $maleno',
                              style: TextStyle(
                                color: Color(0xFF0D0D0D),
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Female : $femaleno',
                              style: TextStyle(
                                color: Color(0xFF0D0D0D),
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ));
              })
        ]),
      )),
    );
  }
}
