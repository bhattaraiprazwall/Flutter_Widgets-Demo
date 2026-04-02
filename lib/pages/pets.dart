import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Pets extends StatefulWidget {
  const Pets({super.key});

  @override
  State<Pets> createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Pets List'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>( //means the collection of documents
          stream: FirebaseFirestore.instance.collection('pets').snapshots(),
          builder: (context, snapshot) { //👉 This is a function (callback) that Flutter calls to build UI //context is :The position of this widget in the widget tree
          //this context is the location of StreamBuilder widget in widget tree
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator.adaptive());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: $snapshot.error'));
            }
            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Center(child: Text('No pets found'));
            }

            final petDocs = snapshot.data!.docs;

            return ListView.builder(
              itemCount: petDocs.length,
              itemBuilder: (context, index) { 
                //👉 context = location of each list item
                return Card(
                  child: ListTile(
                    title: Text(petDocs[index]['name']),
                    subtitle: Text(petDocs[index]['animal']),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
