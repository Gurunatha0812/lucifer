import 'package:flutter/material.dart';
import 'package:lucifer/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("lucifer"),
      ),
      body: Center(
        child:Text("hello world...")
      ),

    );
  }
}
