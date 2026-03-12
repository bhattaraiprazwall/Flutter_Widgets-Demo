import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1fYaY9LEjaK0yhT3WsncM36y6MD9sLCHU4A&s',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prajwal Bhattarai',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text('prajwalbhattarai80@gmail.com'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.folder), title: Text('My Files')),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),

              ListTile(leading: Icon(Icons.star), title: Text('Starred')),

              ListTile(leading: Icon(Icons.delete), title: Text('Trash')),

              ListTile(leading: Icon(Icons.upload), title: Text('Uploads'),),
              Divider(),
              ListTile(leading: Icon(Icons.share), title: Text('Share')),

              ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text('Drawer')),
      body: (Center(child: Text('Drawer Widget'))),
    );
  }
}
