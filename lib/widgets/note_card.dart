import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditNoteView()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 16),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
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
                title: const Text(
                  "Flutter tips",
                  style: TextStyle(fontSize: 24),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Build your career with Tharwat samy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Icon(
                      FontAwesomeIcons.trash,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0, top: 16),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "12 sept 2021",
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
