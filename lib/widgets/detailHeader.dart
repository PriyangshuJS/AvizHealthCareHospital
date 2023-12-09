import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailBar extends StatelessWidget {
  String title;
  DetailBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFF0D0D0D),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}
