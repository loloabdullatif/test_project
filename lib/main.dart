import 'package:flutter/material.dart';
import 'package:test_project/pages/home_page.dart';
import 'package:test_project/pages/home_page_2.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage2(),
    );
  }
}
