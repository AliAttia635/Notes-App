// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  String title;
  Widget IconWidget;
  CustomAppBar({
    required this.title,
    required this.IconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        IconWidget,
      ],
    );
  }
}
