import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_widgets/firebase/firebase_email_pass_authentication.dart';
import 'package:flutter_widgets/firestore_db/database_options.dart';
// import 'package:flutter_widgets/pages/insta_profile_page.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Set Firebase language code to eliminate "X-Firebase-Locale is null" warning
  FirebaseAuth.instance.setLanguageCode('en');
  // Disable verbose Firebase logging

  FirebaseAuth.instance.setLanguageCode('en');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DatabaseOptions();
          } else {
            return FirebaseEmailPassAuthentication();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        // scaffoldBackgroundColor:Color.fromRGBO(240, 242, 245, 1),
        textTheme: TextTheme(
          titleMedium: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
