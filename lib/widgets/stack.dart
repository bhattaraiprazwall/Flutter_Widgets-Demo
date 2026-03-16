import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                // child: Image.asset('assets/image.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
