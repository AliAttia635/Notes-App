import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/Button.dart';
import 'package:notes_app/widgets/color_item.dart';
import 'package:notes_app/widgets/color_item_list_view.dart';
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
            onChanged: (data) {
              title = data;
            },
          ),
          CustomFormTextField(
            hint: 'Content',
            maxLines: 5,
            onChanged: (data) {
              sunTitle = data;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          ColorItemListView(),
          const SizedBox(
            height: 22,
          ),
          CustomButton(
            text: 'Add',
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formatteddate =
                    DateFormat("dd-MM-yyyy").format(currentDate);
                NoteModel noteModel = NoteModel(
                    title: title!,
                    content: sunTitle!,
                    date: formatteddate.toString(),
                    color: 3);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }
            },
          ),
        ],
      ),
    );
  }
}
