import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 24),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
