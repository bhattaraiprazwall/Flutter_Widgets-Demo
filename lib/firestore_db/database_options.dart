import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_widgets/functions/db_functions.dart';
import 'package:logger/logger.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  var log = Logger(
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
        title: Text('Database Operations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                create('pet', 'jimmy', 'tommy', 'cat', 5);
                log.d('Button clicked');
              },
              title: 'Create',
            ),
            CustomButton(onPressed: () {}, title: ('Update')),
            CustomButton(onPressed: () {}, title: ('Retrieve')),
            CustomButton(onPressed: () {}, title: ('Delete')),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
      ),

      onPressed: onPressed,
      child: Text(title),
    );
  }
}
