import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
  });

  final TextEditingController controller;
  final String label, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 5.0),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            contentPadding: const EdgeInsets.all(12.0),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 13.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
