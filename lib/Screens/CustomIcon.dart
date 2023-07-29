import 'package:flutter/material.dart';

class CustomSearchICon extends StatelessWidget {
  const CustomSearchICon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.03),
          borderRadius: BorderRadius.circular(16)),
      child: const Icon(
        Icons.search,
        size: 28,
      ),
    );
  }
}
