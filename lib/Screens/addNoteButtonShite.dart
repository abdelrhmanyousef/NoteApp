import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';

class addnotebutton extends StatelessWidget {
  const addnotebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(hinttext: "Title"),
          SizedBox(
            height: 1,
          ),
          CustomTextField(
            hinttext: "Content",
            maxlines: 5,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
