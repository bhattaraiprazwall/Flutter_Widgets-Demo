import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet Widget',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 50,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ),),
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min, // only takes the minimum size it requires
                  children: [
                    ListTile(title: Text('Orange'), subtitle: Text('Prajwal')),
                    ListTile(title: Text('Pineapple'), subtitle: Text('Roshan')),

                    ListTile(title: Text('Mango'), subtitle: Text('Rohan')),

                    ListTile(title: Text('Egg'), subtitle: Text('Akshit')),
                  ],
                );
              },
            );
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}
