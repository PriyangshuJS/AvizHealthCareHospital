import 'package:flutter/material.dart';

class NewAppointment extends StatefulWidget {
  const NewAppointment({
    Key? key,
  }) : super(key: key);

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: isExpanded ? 120 : 80, // Adjust as needed
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    // Adjust the radius based on the card height
                    ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "User",
                        style: TextStyle(
                          color: Color(0xFF202020),
                          // Adjust the font size based on the card height
                        ),
                      ),
                      Text(
                        "General",
                        style: TextStyle(
                          color: Color(0xFFF83D5B),
                          // Adjust font size
                        ),
                      ),
                      Text(
                        "2 months",
                        style: TextStyle(
                          color: Color(0x99202020),
                          // Adjust font size
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              isExpanded
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Implement approve logic here
                            print("Approved");
                          },
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Implement decline logic here
                            print("Declined");
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  : IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_right,
                        color: Color(0xFFF83D5B),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
