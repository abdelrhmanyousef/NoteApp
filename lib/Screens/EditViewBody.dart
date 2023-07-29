import 'package:flutter/material.dart';
import 'package:noteapp/Screens/CustomTextField.dart';
import 'package:noteapp/Screens/customAppBar.dart';

import 'CustomButton.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(
              titel: " Edit Note",
              icon: Icons.check,
            ),
            CustomTextField(hinttext: "Titel"),
            CustomTextField(
              hinttext: "Note",
              maxlines: 5,
            ),
            CustomButton(
              bname: "Edit",
            )
          ],
        ),
      ),
    );
  }
}
