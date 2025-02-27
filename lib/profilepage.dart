import 'package:first_nti_project/assetsicons.dart';
import 'package:first_nti_project/assetsinmages.dart';
import 'package:first_nti_project/colors.dart';
import 'package:first_nti_project/defaultcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 277,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsImagesLocal.palastineflag),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MyContainer(
            icon: AssetsIcons.user,
            text: "  Update profile",
            top: 24,
          ),
          MyContainer(icon: AssetsIcons.history, text: "  History"),

          Container(
            width: double.infinity,
            height: 63,

            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 17, left: 20, right: 20),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                underline: SizedBox(),
                isExpanded: true,
                hint: Text(" Selected Option"),
                //icon: SvgPicture.asset(AssetsIcons.arrowdown),
                dropdownColor: MyColors.white,
                borderRadius: BorderRadius.circular(15),
                items:
                    choices.keys.map((String key) {
                      return DropdownMenuItem<String>(
                        value: key,
                        child: Row(
                          children: [
                            CircleAvatar(
                              // width: 40,
                              // height: 40,
                              // color: MyColors.red,
                              child: SvgPicture.asset(
                                AssetsIcons.palastineflag,
                                width: 40,
                                height: 40,
                                //  fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(title, style: TextStyle(fontSize: 12)),
                                Text(
                                  choices[key]!,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                onChanged: (newValue) {
                  print("Selected: $newValue");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final String title = "Hello!";
final Map<String, String> choices = {
  "Option 1": "Option 1",
  "Option 2": "Option 2",
  "Option 3": "Option 3",
  "Option 4": "Option 4",
};
