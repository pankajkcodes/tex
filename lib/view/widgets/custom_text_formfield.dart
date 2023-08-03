import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.controller, required this.hintText});

  final TextEditingController? controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          fillColor: const Color(0xffF5F5F5),
          contentPadding: const EdgeInsets.only(left: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
