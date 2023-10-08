import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.controller, required this.labelText, this.maxLine=1, this.borderRadius});
  final TextEditingController? controller;
  final String labelText;
  final int maxLine;
    final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      maxLines: maxLine,
      decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius??50)
          )
      ),
    );
  }
}
