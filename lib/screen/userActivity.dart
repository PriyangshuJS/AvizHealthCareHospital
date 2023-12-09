import 'package:flutter/material.dart';

import '../widgets/calender.dart';
import '../widgets/dropbox.dart';

class UserActivity extends StatefulWidget {
  const UserActivity({super.key});

  @override
  State<UserActivity> createState() => _UserActivityState();
}

class _UserActivityState extends State<UserActivity> {
  @override
  Widget build(BuildContext context) {
    bool isExpanded = false;
    return SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Calender(),
            const SizedBox(height: 30),
            Dropbox(),
            const SizedBox(height: 30),
            Dropbox(),
            const SizedBox(height: 30),
            Dropbox(),
          ],
        ),
      )),
    );
  }
}
