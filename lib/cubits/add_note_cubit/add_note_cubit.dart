import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel noteModel) {
    emit(AddNoteLoading());
    try {
      //هنا بحددله نوع الحاجة اللى هتتخزن وتقريبا ممكن معملهاش عادى ولكن للتأكيد بعملها
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notesBox.add(noteModel);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
