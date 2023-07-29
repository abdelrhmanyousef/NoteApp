import 'package:flutter/material.dart';

class CustomSearchICon extends StatelessWidget {
  const CustomSearchICon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.03),
          borderRadius: BorderRadius.circular(16)),
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
