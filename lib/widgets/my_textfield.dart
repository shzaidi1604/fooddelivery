import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool obscureText;

  MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          hintText: hintText, hintStyle:TextStyle(color:  Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }
}
