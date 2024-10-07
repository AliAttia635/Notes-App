import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),

      // body: ListView.builder(
      //   itemCount: 7,
      //   itemBuilder: (context, index) {
      //     return NoteCard();
      //   },
      // ),
    );
  }
}
