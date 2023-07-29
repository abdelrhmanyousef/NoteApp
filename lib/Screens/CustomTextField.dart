import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hinttext, this.maxlines = 1})
      : super(key: key);
  final String hinttext;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            maxLines: maxlines,
            decoration: InputDecoration(
                hintText: hinttext,
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
