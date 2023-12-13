import 'package:flutter/material.dart';

class DocCard extends StatefulWidget {
  final Map<String, dynamic> data;
  DocCard({
    super.key,
    required this.data,
  });

  @override
  State<DocCard> createState() => _DocCardState();
}

class _DocCardState extends State<DocCard> {
  @override
  Widget build(BuildContext context) {
    String Dname = widget.data["dname"] ?? "Doctor";
    String picUrl = widget.data["picurl"] ?? "Unknown";
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: screenWidth < 600 ? 30 : 50,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      color: Color(0xFFF83D5B),
                      fontSize: screenWidth < 600 ? 14 : 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Text(
                    Dname,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth < 600 ? 18 : 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Text(
                    widget.data['status'] ??
                        'Verification pending', // Replace 'status' with the actual key in your Firestore document
                    style: TextStyle(
                      color: Color(0xFFAD2125),
                      fontSize: screenWidth < 600 ? 8 : 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            if (screenWidth < 600) // Show IconButton only for phones
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Color(0xFFF83D5B),
                  size: 24,
                ),
              ),
          ],
        );
      },
    );
  }
}
