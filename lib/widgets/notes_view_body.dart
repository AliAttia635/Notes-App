import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: "Notes",
            iconWidget: CustomIcon(
              icon: Icons.search,
            ),
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
