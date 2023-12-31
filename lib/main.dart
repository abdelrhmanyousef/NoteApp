import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Views/NotesView.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotesView());
  }
}
