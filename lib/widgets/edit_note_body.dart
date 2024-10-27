import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/loaded_notes/cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/Button.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  EditNoteBody({super.key, this.noteModel});
  final NoteModel? noteModel;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: "Edit Note",
            IconWidget: CustomIcon(
              icon: Icons.done,
              onPressed: () {
                noteModel!.title = title ?? noteModel!.title;
                noteModel!.content = content ?? noteModel!.content;
                noteModel!.save();
                BlocProvider.of<LoadNotesCubit>(context).loadAllNotes();
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomFormTextField(
            hint: noteModel!.title,
            onChanged: (data) {
              title = data;
            },
          ),
          CustomFormTextField(
            hint: noteModel!.content,
            maxLines: 5,
            onChanged: (data) {
              content = data;
            },
          ),
        ],
      ),
    );
  }
}
