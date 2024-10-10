import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: "Edit Note",
            IconWidget: CustomIcon(icon: Icons.done),
          ),
          SizedBox(
            height: 30,
          ),
          CustomFormTextField(hint: "title"),
          CustomFormTextField(
            hint: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
