import 'package:flutter/material.dart';

import 'CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titel, required this.icon});
  final String titel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            titel,
            style: const TextStyle(fontSize: 30),
          ),
          Spacer(),
          CustomSearchICon(
            icon: icon,
          )
        ],
      ),
    );
  }
}
