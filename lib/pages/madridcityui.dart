import 'package:flutter/material.dart';

class Madridcityui extends StatefulWidget {
  const Madridcityui({super.key});

  @override
  State<Madridcityui> createState() => _MadridcityuiState();
}

class _MadridcityuiState extends State<Madridcityui> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 400,
                    color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(height: 350,decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYrU6E_cCSIohOzjXAbckDMQwcYnvkIU-sWA&s',
                        ),
                      ),
                    ),),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour for Designers',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Random Description',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: .spaceEvenly,

                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('20', Icons.upload),
                  rowIconText('20', Icons.message),
                  rowIconText('20', Icons.face),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Icon(icon),
      ],
    );
  }
}
