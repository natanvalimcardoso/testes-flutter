import 'package:flutter/material.dart';
import 'package:flutter_testes_masterclass/view/home_page.dart';

void main() {
  runApp(const MyApp()); //here
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),// here
    );
  }
}
