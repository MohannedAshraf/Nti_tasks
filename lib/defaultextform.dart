import 'package:flutter/material.dart';

class DefaulTextform extends StatelessWidget {
  const DefaulTextform({
    super.key,
    this.icon,
    required this.labelText,
    this.maxLines,
    this.height = 60,
  });
  final Widget? icon;
  final String labelText;
  final int? maxLines;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 350,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          icon: icon,
          labelText: labelText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
