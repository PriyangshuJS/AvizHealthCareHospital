import 'package:avizhealthcarehospital/widgets/conformButton.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_database/firebase_database.dart';

class AplicationForm extends StatefulWidget {
  const AplicationForm({Key? key}) : super(key: key);

  @override
  _AplicationFormState createState() => _AplicationFormState();
}

class _AplicationFormState extends State<AplicationForm> {
  // final DatabaseReference _database = FirebaseDatabase.instance.reference();
  final TextEditingController _field1Controller = TextEditingController();
  final TextEditingController _field2Controller = TextEditingController();
  final TextEditingController _field3Controller = TextEditingController();
  final TextEditingController _field4Controller = TextEditingController();
  final TextEditingController _field5Controller = TextEditingController();

  // void _submitForm() {
  //   // Upload data to Firebase
  //   _database.child('applications').push().set({
  //     'field1': _field1Controller.text,
  //     'field2': _field2Controller.text,
  //     'field3': _field3Controller.text,
  //     'field4': _field4Controller.text,
  //     'field5': _field5Controller.text,
  //   });

  //   // Clear text controllers after submitting
  //   _field1Controller.clear();
  //   _field2Controller.clear();
  //   _field3Controller.clear();
  //   _field4Controller.clear();
  //   _field5Controller.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              _buildTextFieldWithLabel(
                  'Active mobile number:', _field1Controller),
              _buildTextFieldWithLabel(
                  'Active mobile number:', _field2Controller),
              _buildTextFieldWithLabel(
                  'Active mobile number:', _field3Controller),
              _buildTextFieldWithLabel(
                  'Active mobile number:', _field4Controller),
              _buildTextFieldWithLabel(
                  'Active mobile number:', _field5Controller),
              SizedBox(height: 20),
              ConformButton(conformText: "Submit")
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithLabel(
      String label, TextEditingController controller) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black.withOpacity(0.800000011920929),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(height: 8),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
