import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key, required this.hinttext, this.maxlines = 1, this.onSaved})
      : super(key: key);
  final String hinttext;
  final int maxlines;
  final void Function(String?)? onSaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Field is Empty";
              } else {
                return null;
              }
            },
            onSaved: widget.onSaved,
            maxLines: widget.maxlines,
            decoration: InputDecoration(
                hintText: widget.hinttext,
                border: buildborder(),
                enabledBorder: buildborder(),
                focusedBorder:
                    buildborder(color: Color.fromARGB(255, 75, 197, 122))),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildborder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
