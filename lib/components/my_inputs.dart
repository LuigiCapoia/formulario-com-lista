import 'package:flutter/material.dart';

class MyInputs extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;

 const MyInputs({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}
