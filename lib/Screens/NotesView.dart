import 'package:flutter/material.dart';
import 'package:noteapp/Screens/addNoteButtonShite.dart';

import 'NotesViewbody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewbody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: context,
            builder: (context) {
              return const addnotebutton();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
