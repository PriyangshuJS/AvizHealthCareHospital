import 'package:avizhealthcarehospital/screen/Analytics.dart';
import 'package:avizhealthcarehospital/screen/main_page.dart';
import 'package:avizhealthcarehospital/screen/userActivity.dart';
import 'package:avizhealthcarehospital/screen/user_health.dart';
import 'package:avizhealthcarehospital/widgets/appointmentCard.dart';
import 'package:flutter/material.dart';

import 'screen/Appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AvizHealthCare Hospital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: UserHealth(),
    );
  }
}
