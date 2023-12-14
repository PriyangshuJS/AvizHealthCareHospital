import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ContainerWithTabs(),
      ),
    );
  }
}

class ContainerWithTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: ShapeDecoration(
        color: Color(0xFFFFEEF1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Analytics')
            .doc('BQ4SFtOPiaZY3zbRjXE2')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }

          final data = snapshot.data?.data() as Map<String, dynamic>;
          var todayValue = data['today'] ?? '0';
          var weekValue = data['week'] ?? '0';
          var monthValue = data['monthly'] ?? '0';
          var lifetimeValue = data['lifetime'] ?? '0';

          return DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF83D5B),
                  ),
                  tabs: const [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Today"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Week"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Month"),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Lifetime"),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text(
                          todayValue,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFF83D5B),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          weekValue,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFF83D5B),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          monthValue,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFF83D5B),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          lifetimeValue,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFFF83D5B),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
