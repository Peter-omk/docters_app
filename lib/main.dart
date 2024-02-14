// ignore_for_file: unused_import, prefer_const_constructors

import 'package:docters_app/pages/home_page.dart';
import 'package:docters_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
