import 'package:first_nti_project/assetsicons.dart';
import 'package:first_nti_project/colors.dart';
import 'package:first_nti_project/defaultextform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First UI',
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.backgroundColor,
        appBarTheme: AppBarTheme(backgroundColor: MyColors.backgroundColor),
        fontFamily: 'Lexend Deca',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const EditTask(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Today tasks",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),
        ),
        leading: SvgPicture.asset(AssetsIcons.arrowback),
        actions: [
          Container(
            width: 60,
            height: 25,
            decoration: BoxDecoration(
              color: Color(0xffCEEBDC),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Center(
              child: Row(
                children: [
                  Text("  "),
                  SvgPicture.asset(AssetsIcons.plus),
                  Text(" Add"),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.only(left: 25),

                child: Center(child: Text("All")),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                margin: EdgeInsets.only(left: 10),

                child: Center(child: Text("Future")),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                margin: EdgeInsets.only(left: 10),

                child: Center(child: Text("Missed")),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                ),
                margin: EdgeInsets.only(left: 10),

                child: Center(child: Text("Done")),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              SizedBox(width: 15),
              Text('Results'),
              SizedBox(width: 25),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffCEEBDC),
                ),

                child: Center(
                  child: Text("5", style: TextStyle(color: Colors.green)),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),

              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 350,
            height: 90,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsIcons.work),
                    Text('  Work task'),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 239, 235, 235),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text("Future")),
                    ),
                  ],
                ),
                Text('Go to supermarket to buy some  milk & '),
                Text('eggs'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 350,
            height: 90,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsIcons.work),
                    Text('  Work task'),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text("Done")),
                    ),
                  ],
                ),
                Text('Go to supermarket to buy some  milk & '),
                Text('eggs'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 350,
            height: 90,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsIcons.home),
                    Text('  Home task'),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text("Done")),
                    ),
                  ],
                ),
                Text('Add new  feature for Do It app and '),
                Text('commit it'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 350,
            height: 90,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsIcons.contact),
                    Text('  personal task'),
                    Spacer(),
                    Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffCEEBDC),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text(" In Progress")),
                    ),
                  ],
                ),
                Text('Improve my English skills by trying to '),
                Text('speek'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(bottom: 10),
            width: 350,
            height: 90,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsIcons.home),
                    Text('  Home task'),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text("Done")),
                    ),
                  ],
                ),
                Text('Add new  feature for Do It app and '),
                Text('commit it'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit tasks",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),
        ),
        leading: SvgPicture.asset(AssetsIcons.arrowback),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 80,
            height: 28,
            decoration: BoxDecoration(
              color: MyColors.red,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Center(
              child: Row(
                children: [Text("  "), SvgPicture.asset(AssetsIcons.group)],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text("    In progress"),
            Text("    Believe you can, and you're halfway there."),

            DefaulTextform(
              labelText: 'Task Group',
              icon: SvgPicture.asset(AssetsIcons.home2),
            ),
            DefaulTextform(labelText: 'Task Name'),
            DefaulTextform(
              labelText: 'describtion',
              height: 100,
              maxLines: null,
            ),
            DefaulTextform(
              labelText: 'Start Date',
              icon: SvgPicture.asset(AssetsIcons.calender),
            ),
            DefaulTextform(
              labelText: 'End Date',
              icon: SvgPicture.asset(AssetsIcons.calender),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 24),
                  backgroundColor: MyColors.green,
                  foregroundColor: MyColors.forground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: BorderSide(width: 2, color: MyColors.green),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Mark as Done",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: MyColors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 24),
                  backgroundColor: Color(0xffFFFFFF),
                  foregroundColor: const Color.fromARGB(255, 221, 132, 132),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: BorderSide(width: 2, color: MyColors.green),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "UPDATE",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: MyColors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
