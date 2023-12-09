import 'package:flutter/material.dart';

import '../widgets/detailHeader.dart';
import '../widgets/tabedContainer.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          DetailBar(title: "Over All"),
          SizedBox(height: 10),
          ContainerWithTabs(),
          SizedBox(height: 20),
          DetailBar(title: "Over All"),
          SizedBox(height: 10),
          ContainerWithTabs(),
          SizedBox(height: 20),
          Row(
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
                    Text("2500"),
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
                    Text("2500"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              color: Color(0xFFFFEEF1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ]),
      )),
    );
  }
}
