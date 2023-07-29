import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';

class addnotebutton extends StatelessWidget {
  const addnotebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: addform(),
    );
  }
}

class addform extends StatefulWidget {
  const addform({
    super.key,
  });

  @override
  State<addform> createState() => _addformState();
}

class _addformState extends State<addform> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> kForm = GlobalKey();
  String? Titel, SubTitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: kForm,
      child: Column(
        children: [
          CustomTextField(
            hinttext: "Title",
            onSaved: (value) {
              Titel = value;
            },
          ),
          const SizedBox(
            height: 1,
          ),
          CustomTextField(
            hinttext: "Content",
            maxlines: 5,
            onSaved: (value) {
              SubTitel = value;
            },
          ),
          CustomButton(
            bname: "Add",
            ontap: () {
              if (kForm.currentState!.validate()) {
                kForm.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
