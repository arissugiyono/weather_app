import 'package:flutter/material.dart';
import 'package:weatherapp_test/services/api.dart';
import 'package:weatherapp_test/ui/home.dart';
import 'package:weatherapp_test/ui/home_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
