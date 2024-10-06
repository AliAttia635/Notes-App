import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(12)),
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Task 1"),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                  alignment: Alignment.centerRight, child: Icon(Icons.delete)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("complete the basics course with tharwat samy"),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text("12 sept 2021"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
