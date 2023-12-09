import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.70,
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        decoration: ShapeDecoration(
          color: Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 20,
              offset: Offset(2, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(0), // Set contentPadding to 0
              leading: CircleAvatar(),
              title: Text(
                'Patient name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),

              subtitle: Text(
                'Lorem ipsum dolor sit amet, consur adipiscing elit. consectetur adiping elit. Lorem ipsum dolor...'
                        .split(' ')
                        .take(5)
                        .join(' ') +
                    '...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              trailing: Icon(Icons.star),
            ),
          ),
        ),
      ),
    );
  }
}
