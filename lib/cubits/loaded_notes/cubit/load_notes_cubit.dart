import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'load_notes_state.dart';

class LoadNotesCubit extends Cubit<LoadNotesState> {
  LoadNotesCubit() : super(LoadNotesInitial());
  List<NoteModel>? notesList;

  loadAllNotes() {
    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
    notesList = noteBox.values.toList();
    emit(LoadNotesLoaded());
  }
}
