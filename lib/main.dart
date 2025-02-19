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
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(
            "Task 1",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Text('hi'),
          SizedBox(width: 15),
          Icon(Icons.search),

          SizedBox(width: 15),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Welcome", style: TextStyle(fontSize: 30))),
          Spacer(),
          Text('my name is Mohanned ', style: TextStyle(fontSize: 30)),
          Spacer(),
          Text('my age  is  ', style: TextStyle(fontSize: 30)),
          Text('22', style: TextStyle(fontSize: 30)),
          Spacer(),
          Center(child: Text("Buy", style: TextStyle(fontSize: 35))),
        ],
      ),
    );
  }
}
