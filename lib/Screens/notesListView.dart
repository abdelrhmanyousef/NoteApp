import 'package:flutter/material.dart';
import 'package:noteapp/Screens/Notritems.dart';

class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
