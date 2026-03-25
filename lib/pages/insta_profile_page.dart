import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaProfilePage extends StatelessWidget {
  const InstaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'prajwal.b',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
                        ),
                      ),
                      SizedBox(height: 5),

                      Text(
                        'Prajwal B.',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        'Photographer / Nepal',
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          profileDetails('150', 'Posts'),
                          profileDetails('5k', 'Followers'),
                          profileDetails('100', 'Following'),
                        ],
                      ),

                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                padding: EdgeInsets.all(15),
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    30,
                                  ),
                                ),
                              ),

                              onPressed: () {},
                              child: Text('Follow'),
                            ),
                          ),
                          SizedBox(width: 10),

                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,

                                color: Colors.lightBlue,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ), //thickness of outer circle

                    child: CircleAvatar(backgroundColor: Colors.red,radius: 32, child: Icon(Icons.add,color: Colors.white,)),
                  );
                } else {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                    ), //thickness of outer circle

                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
                          ),
                        ),
                        shape: BoxShape.circle,

                        // border: Border.all(),
                        // color: Colors.red,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Container(height: 100, color: Colors.green),
          Expanded(child: Container(color: Colors.yellow)),
        ],
      ),
    );
  }

  Widget profileDetails(String text1, String text2) {
    return Column(
      children: [
        Text(text1, style: TextStyle(fontSize: 24)),
        Text(text2, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
