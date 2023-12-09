import 'package:avizhealthcarehospital/widgets/addressCard.dart';
import 'package:avizhealthcarehospital/widgets/conformButton.dart';
import 'package:flutter/material.dart';

import '../widgets/managerCard.dart';

class UserAccDetail extends StatelessWidget {
  const UserAccDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shift ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF83D5B),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
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
                  child: Center(
                      child: Text(
                    'Hours',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
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
                  child: Center(
                      child: Text(
                    'Day/Night',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'General Care',
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
                buildUserRow('Patient Name', 'UserName'),
                buildUserRow('Relation', 'gUserName'),
                buildUserRow('Age:', 'jUserName'),
                buildUserRow('Gender', 'eUserName'),
                buildUserRow('Duration:', 'UserName'),
                buildUserRow('Issue:', 'gUserName'),
                buildUserRow('Service Opted:', 'jUserName'),
              ],
            ),
            const SizedBox(height: 20),
            ConformButton(conformText: "Assessment File"),
            const SizedBox(height: 30),
            Text(
              'Your service starts today',
              style: TextStyle(
                color: Colors.black.withOpacity(0.800000011920929),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(height: 20),
            ManagerCard(),
            SizedBox(height: 20),
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
            AddressCard(),
          ],
        ),
      )),
    );
  }

  Widget buildUserRow(String label, String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('$label:'),
        Spacer(),
        Text(username),
      ],
    );
  }
}
