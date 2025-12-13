import 'package:flutter/material.dart';

Widget passwordField({
  required String label,
  required bool show,
  required VoidCallback onToggle,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(fontSize: 14, color: Colors.black87)),
      const SizedBox(height: 6),
      TextField(
        obscureText: !show,
        decoration: InputDecoration(
          hintText: "Enter $label",
          suffixIcon: InkWell(
            onTap: onToggle,
            child: Icon(show ? Icons.visibility : Icons.visibility_off),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ],
  );
}