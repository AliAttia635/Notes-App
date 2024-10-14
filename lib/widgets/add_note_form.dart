import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, sunTitle;
  //AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomFormTextField(
            hint: 'Title',
            onSaved: (data) {
              title = data;
            },
          ),
          CustomFormTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (data) {
              sunTitle = data;
            },
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            text: 'Add',
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                //autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
