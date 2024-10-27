import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/loaded_notes/cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<LoadNotesCubit>(context).loadAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: BlocBuilder<LoadNotesCubit, LoadNotesState>(
        builder: (context, state) {
          // LoadNotesCubit myCubit = BlocProvider.of<LoadNotesCubit>(context);
          // myCubit.loadAllNotes();
          List<NoteModel>? notes =
              BlocProvider.of<LoadNotesCubit>(context).notesList ?? [];
          // allNotesList = myCubit.notesList;
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteCard(noteModel: notes[index]);
              });
        },
      ),
    );
  }
}
