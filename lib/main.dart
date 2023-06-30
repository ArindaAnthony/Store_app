import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';
import 'consts.dart';

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
      title: 'Store App',
      theme: ThemeData(
        scaffoldBackgroundColor: lightCardColor,
        primaryColor: backgroundColor,
      ),
      home: const HomeScreen(),

    );
  }
}
