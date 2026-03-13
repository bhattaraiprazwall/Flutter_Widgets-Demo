import 'package:flutter/material.dart';
import 'package:flutter_widgets/animated_text.dart';
// import 'package:flutter_widgets/bottomsheet.dart';
// import 'package:flutter_widgets/dismissible.dart';
// import 'package:flutter_widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const AnimatedText(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,primaryColor: Colors.yellow,
        textTheme: TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.bold)
        )
      ),
      
    );
  }
}