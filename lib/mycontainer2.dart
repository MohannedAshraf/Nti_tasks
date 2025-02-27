import 'package:first_nti_project/colors.dart';
import 'package:flutter/material.dart';

class Mycontainer2 extends StatelessWidget {
  const Mycontainer2({super.key, required this.index});
  final String index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      color: MyColors.green,

      height: 100,
      child: Center(child: Text(index)),
    );
  }
}
