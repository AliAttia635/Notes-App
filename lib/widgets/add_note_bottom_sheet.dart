import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16, top: 32, bottom: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomFormTextField(
              hint: 'Title',
            ),
            CustomFormTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}
