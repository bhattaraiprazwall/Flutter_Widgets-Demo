import 'package:flutter/material.dart';
class DismissibleWidget extends StatefulWidget { //creates a custom widget called DismissibleWidget
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Mango','Apple','Banana','Orange','Pineapple'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible',),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(itemCount: fruits.length
      ,itemBuilder:(context, index) {
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction) {
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.red,));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.green,));
            }
          },
          background: Container(color: Colors.red,),
          secondaryBackground: Container(color: Colors.green,),
          key: Key(fruit), child: Card(
            child: ListTile(
              title: Text(fruits[index]),
            
            ),
          ));
      },),
    );
  }
}