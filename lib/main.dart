import 'package:flutter/material.dart';
import 'package:flutter_widgets/dismissible.dart';
// import 'package:flutter_widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const DismissibleWidget(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,primaryColor: Colors.deepPurple,
      ),
    );
  }
}