import 'package:flutter/material.dart';

class ManagerCard extends StatelessWidget {
  const ManagerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF83D5B)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(),
        title: Text(
          'Shruti Gupta',
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        subtitle: SizedBox(
          width: 192,
          child: Text(
            'Hello, I am your General Care Manager. Please feel free to call me for any queries. ',
            style: TextStyle(
              color: Colors.black.withOpacity(0.800000011920929),
              fontSize: 9,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        trailing: IconButton(icon: Icon(Icons.call_rounded), onPressed: null),
      ),
    );
  }
}
