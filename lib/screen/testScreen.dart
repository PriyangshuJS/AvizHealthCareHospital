import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Screen"),
      ),
      body: Center(
        child: Text("Test Screen Body"),
      ),
    );
  }
}
