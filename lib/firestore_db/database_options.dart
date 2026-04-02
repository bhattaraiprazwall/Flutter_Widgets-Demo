import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/functions/db_functions.dart';
import 'package:flutter_widgets/pages/pets.dart';
import 'package:logger/logger.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  var log = Logger();
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
                create('pets', 'bully', 'bully', 'bull', 10);
                log.d('Button clicked');
              },
              title: 'Create',
            ),
            CustomButton(
              onPressed: () {
                update('pets', 'cat', 'name', 'Jonny');
              },
              title: ('Update'),
            ),
            CustomButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pets(),));
            }, title: ('Retrieve')),
            CustomButton(onPressed: () {
              delete('pet', 'cat');
            }, title: ('Delete')),
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
