import 'package:first_nti_project/colors.dart';
import 'package:first_nti_project/mycontainer2.dart';
import 'package:flutter/material.dart';

class Newtask extends StatelessWidget {
  const Newtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                print("hi Mohanned");
              },
              icon: Icon(Icons.home),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Mycontainer2(index: "1"),
                    Mycontainer2(index: "2"),
                    Mycontainer2(index: "3"),
                    Mycontainer2(index: "4"),
                    Mycontainer2(index: "5"),
                    Mycontainer2(index: "6"),
                    Mycontainer2(index: "7"),
                    Mycontainer2(index: "8"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة بأسماء الدول
    final List<String> countries = [
      "مصر",
      "السعودية",
      "الإمارات",
      "الكويت",
      "المغرب",
      "العراق",
      "الامارات ",
      "سوريا ",
      "فلسطين",
      "مصر",
      "السعودية",
      "الإمارات",
      "الكويت",
      "المغرب",
      "العراق",
      "الامارات ",
      "سوريا ",
      "فلسطين",
      "مصر",
      "السعودية",
      "الإمارات",
      "الكويت",
      "المغرب",
      "العراق",
      "الامارات ",
      "سوريا ",
      "فلسطين",
      "مصر",
      "السعودية",
      "الإمارات",
      "الكويت",
      "المغرب",
      "العراق",
      "الامارات ",
      "سوريا ",
      "فلسطين",
    ];

    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,

                  itemCount:
                      countries.length, // عدد العناصر بناءً على عدد الدول
                  itemBuilder: (context, index) {
                    return InkWell(
                      onLongPress: () {
                        print(
                          "you pressed  on  horizontal List for long time ",
                        );
                      },
                      // onDoubleTap: () {
                      //   print("you pressed  on horizontal List 2 Times ");
                      // },
                      // onTap: () {
                      //   print("you pressed  on horizontal List");
                      // },
                      child: CountryContainer(countryName: countries[index]),
                    );
                  },
                  separatorBuilder:
                      (context, index) => VerticalDivider(
                        thickness: 1.5, // سمك الخط الفاصل
                        color: Colors.grey, // لون الخط الفاصل
                      ),
                ),
              ),

              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: countries.length, // عدد العناصر بناءً على عدد الدول
                itemBuilder: (context, index) {
                  return InkWell(
                    onLongPress: () {
                      print("you pressed  on vertical List for long time ");
                    },
                    // onDoubleTap: () {
                    //   print("you pressed  on vertical List 2 Times ");
                    // },
                    // onTap: () {
                    //   print("You pressed  on the  vertical list");
                    // },
                    child: CountryContainer(countryName: countries[index]),
                  );
                },
                separatorBuilder:
                    (context, index) => Divider(
                      thickness: 1.5, // سمك الخط الفاصل
                      color: Colors.grey, // لون الخط الفاصل
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryContainer extends StatelessWidget {
  final String countryName;

  const CountryContainer({super.key, required this.countryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // العرض بكامل الشاشة
      height: 100, // ارتفاع ثابت
      decoration: BoxDecoration(
        color: MyColors.green, // لون الخلفية
        borderRadius: BorderRadius.circular(15), // تدوير الحواف
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: MyColors.forground, // لون الظل
            spreadRadius: 2, // مدى الانتشار
            blurRadius: 10, // درجة الضبابية
            offset: const Offset(3, 3), // الاتجاه (يمين وأسفل)
          ),
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black, // ظل إضافي لمظهر أفضل
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(-3, -3), // الاتجاه (يسار وأعلى)
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        countryName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
