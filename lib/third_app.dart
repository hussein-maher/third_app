import 'package:flutter/material.dart';
import 'package:third_app/screens/first_screen.dart';

class ThirdApp extends StatelessWidget {
  const ThirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
