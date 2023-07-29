import 'package:flutter/material.dart';

import 'customAppBar.dart';
import 'notesListView.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          Expanded(
            child: notesListView(),
          )
        ],
      ),
    );
  }
}
