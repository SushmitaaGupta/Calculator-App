import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        decoration:  InputDecoration(
            border: InputBorder.none,
            fillColor: Color_App.backgroundcolor2,
            filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:
            const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
            borderRadius: BorderRadius.circular(50.0),
          ),

        ),
        controller:controller,
        readOnly: true,
        autofocus: true,
        showCursor: true,
        style: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
  }
}
