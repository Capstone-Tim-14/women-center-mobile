import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormWidgetProfile extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController tanggalController;

  FormWidgetProfile({
    required this.usernameController,
    required this.firstnameController,
    required this.lastnameController,
    required this.tanggalController,
  });

  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    return await showDatePicker(
      context: context,
      initialDate: tanggalController.text.isNotEmpty
          ? DateTime.parse(tanggalController.text)
          : currentDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: usernameController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: firstnameController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: lastnameController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
          ),
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: tanggalController,
          readOnly:
              true, // Make the text field read-only to prevent manual input
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            suffixIcon: GestureDetector(
              onTap: () async {
                // Function to show date picker
                DateTime? picked = await _selectDate(context);
                if (picked != null) {
                  // Set the selected date to the text field
                  tanggalController.text =
                      DateFormat('yyyy-MM-dd').format(picked);
                }
              },
              child: Icon(Icons.date_range, color: Colors.pink),
            ),
          ),
        ),
      ],
    );
  }
}
