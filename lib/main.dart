import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'First UI in NTI'),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Today tasks",
          style: TextStyle(
            fontSize: 22,
            //  fontWeight: FontWeight.bold,
            // color: Colors.blue,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Container(
            width: 60,
            height: 25,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 255, 185),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Row(children: [Icon(Icons.add), Text("Add")]),
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
                  color: Color.fromARGB(255, 8, 255, 185),
                ),

                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(color: Color.fromARGB(255, 30, 141, 110)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.only(top: 1, left: 7, bottom: 2, right: 4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(136, 218, 206, 206),
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
                    Icon(Icons.work),
                    Text('  Work task'),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
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
              color: const Color.fromARGB(136, 218, 206, 206),
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
                    Icon(Icons.work),
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
              color: const Color.fromARGB(136, 218, 206, 206),
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
                    Icon(Icons.home),
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
              color: const Color.fromARGB(136, 218, 206, 206),
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
                    Icon(Icons.contact_page),
                    Text('  personal task'),
                    Spacer(),
                    Container(
                      width: 90,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 8, 255, 185),
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
              color: const Color.fromARGB(136, 218, 206, 206),
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
                    Icon(Icons.home),
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
