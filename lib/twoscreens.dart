import 'package:first_nti_project/colors.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Screen 1")),
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          color: MyColors.red,
          child: TextButton(
            onPressed: () {
              Users data = Users(name: "Ahmed", age: "30");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2(u: data)),
              );
            },
            child: Text("Goto Screen 2"),
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required, required this.u});
  final Users u;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Screen2")),
      body: Center(
        child: Container(
          child: Column(
            children: [Text(u.name), SizedBox(height: 10), Text(u.age)],
          ),
        ),
      ),
    );
  }
}

class Users {
  final String name;
  final String age;
  Users({required this.name, required this.age});
}
