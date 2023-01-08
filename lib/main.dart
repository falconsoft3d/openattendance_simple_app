import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/home_page.dart';


void main() async { 
  runApp(const MyApp());
  }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'OpenAttendance',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
    }
}