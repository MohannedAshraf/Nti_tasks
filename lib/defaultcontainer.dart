import 'package:first_nti_project/assetsicons.dart';
import 'package:first_nti_project/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.icon,
    required this.text,
    this.top = 0,
  });
  final String icon;
  final String text;
  final double? top;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 63,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 17, left: 10, top: top!, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(color: MyColors.red, child: SvgPicture.asset(icon)),
          Text(text),
          Spacer(),
          SvgPicture.asset(AssetsIcons.arrowup),
        ],
      ),
    );
  }
}
