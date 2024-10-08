import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomFormTextField extends StatefulWidget {
  String hint;
  final int maxLines;

  CustomFormTextField({
    required this.hint,
    this.maxLines = 1,
  });

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        maxLines: widget.maxLines,
        cursorColor: kPrimaryColor,
        validator: (data) {
          if (data!.isEmpty) {
            return "this field is required";
          }
        },
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(
            color: kPrimaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
