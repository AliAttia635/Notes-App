import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

List<Color> colorsList = const [
  Color(0xff2D3047),
  Color(0xff93B7BE),
  Color(0xffE0CA3C),
  Color(0xffA799B7),
  Color(0xff048A81),
  Color(0xffFE5F55),
  Color(0xffF0B67F),
  Color(0xffD6D1B1),
  Color(0xffC7EFCF),
  Color(0xffEEF5DB)
];

class ColorItemListView extends StatefulWidget {
  ColorItemListView({super.key});
  // static Color pickedColor = colorsList[selectedIndex];
  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int selectedIndex = 0; // Track the index of the currently selected color

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
                selectedIndex =
                    index; // Update selectedIndex to the tapped color's index
                BlocProvider.of<AddNoteCubit>(context).selectedColor =
                    colorsList[index];
                setState(() {});
              },
              child: ColorItem(
                color: colorsList[index],
                isPicked: selectedIndex ==
                    index, // Only show as picked if it’s the selected index
              ),
            ),
          );
        },
      ),
    );
  }
}
