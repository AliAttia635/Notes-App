import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/loaded_notes/cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditNoteView(
                      noteModel: noteModel,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            //*المتاح فمش هتتأثر بالسطر ده width واخدة كل ال listTile لان كده كده الب align ب text لل  Wrap بتعمل نفس الحركة بتاعة انى اعمل
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                // titleAlignment: ListTileTitleAlignment.center,
                // tileColor: Colors.red,
                textColor: Colors.black,
                iconColor: Colors.black,
                title: Text(
                  noteModel.title,
                  style: const TextStyle(fontSize: 24),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    noteModel.content,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: IconButton(
                      onPressed: () {
                        noteModel.delete();
                        BlocProvider.of<LoadNotesCubit>(context).loadAllNotes();
                      },
                      icon: const Icon(
                        FontAwesomeIcons.trash,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0, top: 16),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      noteModel.date,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.6), fontSize: 15),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
