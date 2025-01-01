import 'package:flutter/material.dart';
import 'package:linkedin/main_page.dart';
import 'package:linkedin/screens/welcome_screen.dart';
import 'package:linkedin/widgets/custom_appbar.dart';




void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'LinkedIn ',
      home: MainPage(),
    );
  }
}