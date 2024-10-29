import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/loaded_notes/cubit/load_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int selectedIndex; // Track the index of the currently selected color
  @override
  void initState() {
    selectedIndex = colorsList.indexOf(
      Color(widget.noteModel.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedIndex = index;
                    widget.noteModel.color = colorsList[index]
                        .value; // Update selectedIndex to the tapped color's index
                  },
                );
              },
              child: ColorItem(
                  color: colorsList[index],
                  isPicked: selectedIndex ==
                      index // Only show as picked if it’s the selected index
                  ),
            ),
          );
        },
      ),
    );
  }
}
