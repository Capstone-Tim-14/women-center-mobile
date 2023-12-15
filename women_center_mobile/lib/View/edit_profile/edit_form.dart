import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dio/dio.dart';

class FormWidgetProfile extends StatefulWidget {
  final TextEditingController _usernameController;
  final TextEditingController _firstnameController;
  final TextEditingController _lastnameController;
  final DateTime _tanggalController;

  FormWidgetProfile({
    required TextEditingController usernameController,
    required TextEditingController firstnameController,
    required TextEditingController lastnameController,
    required DateTime tanggalController,
  })  : _usernameController = usernameController,
        _firstnameController = firstnameController,
        _lastnameController = lastnameController,
        _tanggalController = tanggalController;

  @override
  _FormWidgetProfileState createState() => _FormWidgetProfileState();
}

class _FormWidgetProfileState extends State<FormWidgetProfile> {
  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime currentDate = widget._tanggalController;
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != currentDate) {
      return picked;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget._usernameController,
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
          controller: widget._firstnameController,
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
          controller: widget._lastnameController,
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
          controller: TextEditingController(
              text: DateFormat('yyyy-MM-dd').format(widget._tanggalController)),
          readOnly: true,
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
                DateTime? picked = await _selectDate(context);
                if (picked != null) {
                  setState(() {
                    // widget._tanggalController = picked;
                  });
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