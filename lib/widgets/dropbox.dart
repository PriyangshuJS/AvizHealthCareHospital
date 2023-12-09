// dropbox_widget.dart

import 'package:avizhealthcarehospital/widgets/checkbox.dart';
import 'package:flutter/material.dart';

class Dropbox extends StatefulWidget {
  @override
  _DropboxState createState() => _DropboxState();
}

class _DropboxState extends State<Dropbox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 4,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.lunch_dining,
                    color: Color(0xFFF83D5B),
                  ),
                  Text(
                    'Hygiene',
                    style: TextStyle(
                      color: Color(0xFFF83D5B),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.minimize_rounded : Icons.add_rounded,
                    color: Color(0xFFF83D5B),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: isExpanded ? 200.0 : 0.0,
          child: isExpanded
              ? Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          // You can customize the content based on the index or any other logic
                          return taskRows("Breakfast", "Text2", "text3");
                        },
                      ),
                    ),
                  ],
                )
              : null,
        ),
      ],
    );
  }

  Widget taskRows(String r1, String r2, String r3) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          MyCheckbox(),
          Spacer(),
          Text(
            r1,
            style: TextStyle(
              color: Colors.black.withOpacity(0.800000011920929),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: 1,
            ),
          ),
          Spacer(),
          Container(
            width: 119,
            height: 32,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, 0.00),
                end: Alignment(-1, 0),
                colors: [Color(0xB2D9D9D9), Colors.white],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFF83D5B)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Time',
                      style: TextStyle(
                        color: Color(0xFFF83D5B),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: ': 11.00 am',
                      style: TextStyle(
                        color: Color(0xFFF83D5B),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
