import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/loaded_notes/cubit/load_notes_cubit.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:notes_app/widgets/custom_floating_action_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
