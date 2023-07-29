import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.bname, this.ontap});
  final String bname;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 68, 199, 204)),
        child: Center(
            child: Text(
          bname,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
