import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(
            borderColor: Colors.pink,
            controller: usernameController,
            hintText: 'Username',
          ),
          SizedBox(height: 16),
          CustomTextField(
            borderColor: Colors.pink,
            controller: firstNameController,
            hintText: 'First Name',
          ),
          SizedBox(height: 16),
          CustomTextField(
            borderColor: Colors.pink,
            controller: lastNameController,
            hintText: 'Last Name',
          ),
          SizedBox(height: 16),
          CustomTextFieldWithCalendarIcon(
            borderColor: Colors.pink,
            controller: dateController,
            hintText: 'Tanggal',
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final Color borderColor;
  final TextEditingController controller;
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.borderColor,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}

class CustomTextFieldWithCalendarIcon extends StatelessWidget {
  final Color borderColor;
  final TextEditingController controller;
  final String hintText;

  const CustomTextFieldWithCalendarIcon({
    Key? key,
    required this.borderColor,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.calendar_today),
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            ).then((selectedDate) {
              if (selectedDate != null) {
                controller.text =
                    selectedDate.toLocal().toString().split(' ')[0];
              }
            });
          },
        ),
      ),
    );
  }
}
