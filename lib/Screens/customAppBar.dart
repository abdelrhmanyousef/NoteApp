import 'package:flutter/material.dart';

import 'CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          CustomSearchICon()
        ],
      ),
    );
  }
}
