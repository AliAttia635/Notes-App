import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notes App"),
        ),
        body: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return NoteCard();
            }));
  }
}
