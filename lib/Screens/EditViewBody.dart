import 'package:flutter/material.dart';
import 'package:noteapp/Screens/CustomTextField.dart';
import 'package:noteapp/Screens/customAppBar.dart';

import 'CustomButton.dart';

class EditViewBody extends StatefulWidget {
  EditViewBody({super.key});

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? Titel, SubTitel;
  GlobalKey<FormState> fkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          key: fkey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CustomAppBar(
                titel: " Edit Note",
                icon: Icons.check,
              ),
              CustomTextField(
                onSaved: (value) {
                  Titel = value;
                },
                hinttext: "Titel",
              ),
              CustomTextField(
                hinttext: "Note",
                maxlines: 5,
                onSaved: (value) {
                  SubTitel = value;
                },
              ),
              CustomButton(
                bname: "Edit",
                ontap: () {
                  if (fkey.currentState!.validate()) {
                    fkey.currentState!.save();
                  } else
                    (autovalidateMode = AutovalidateMode.always);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
