import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/insta_profile_page.dart';
// import 'package:flutter_widgets/pages/madridcityui.dart';
// import 'package:flutter_widgets/widgets/geolocatorwidget.dart';
// import 'package:flutter_widgets/widgets/imagepicker.dart';
// import 'package:flutter_widgets/pages/facebook_login_clone.dart';
// import 'package:flutter_widgets/widgets/form.dart';
// import 'package:flutter_widgets/widgets/stack.dart';
// import 'package:flutter_widgets/widgets/tabbar.dart';
// import 'package:flutter_widgets/widgets/dropdown.dart';
// import 'package:flutter_widgets/widgets/animated_text.dart';
// import 'package:flutter_widgets/widgets/dropdown.dart';
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
      home:  InstaProfilePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,primaryColor: Colors.blue,
        scaffoldBackgroundColor:Color.fromRGBO(240, 242, 245, 1),
        textTheme: TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.bold)
        )
      ),
      
    );
  }
}