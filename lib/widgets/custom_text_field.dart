import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomFormTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String)? onChanged;

  const CustomFormTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        validator: (data) {
          // ?? true the same as when i say data == null
          if (data?.isEmpty ?? true) {
            return "this field is required";
          }
        },
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: kPrimaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
