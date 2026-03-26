// import 'package:flutter/material.dart';

// class InstaProfilePage extends StatelessWidget {
//   const InstaProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.arrow_back_ios),
//         title: const Text(
//           'prajwal.b',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [

//           SizedBox(
//             height: 200,
//             child: Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   width: 170,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const CircleAvatar(
//                         radius: 60,
//                         backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
//                         ),
//                       ),
//                       const SizedBox(height: 5),

//                       Text(
//                         'Prajwal B.',
//                         style: Theme.of(context).textTheme.titleMedium,
//                       ),
//                       const Text(
//                         'Photographer / Nepal',
//                         style: TextStyle(color: Colors.red, fontSize: 14),
//                       ),
//                     ],
//                   ),
//                 ),

//                 Expanded(
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           profileDetails('150', 'Posts'),
//                           profileDetails('5k', 'Followers'),
//                           profileDetails('100', 'Following'),
//                         ],
//                       ),

//                       const SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Expanded(
//                             child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 elevation: 5,
//                                 padding: const EdgeInsets.all(15),
//                                 backgroundColor: Colors.blue,
//                                 foregroundColor: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadiusGeometry.circular(
//                                     30,
//                                   ),
//                                 ),
//                               ),

//                               onPressed: () {},
//                               child: const Text('Follow'),
//                             ),
//                           ),
//                           SizedBox(width: 10),

//                           Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 width: 2,

//                                 color: Colors.lightBlue,
//                               ),
//                               shape: BoxShape.circle,
//                             ),
//                             child: const Icon(
//                               Icons.keyboard_arrow_down,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 100,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 if (index == 0) {
//                   return Container(
//                     margin: const EdgeInsets.all(5),
//                     padding: const EdgeInsets.all(3),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ), //thickness of outer circle

//                     child: CircleAvatar(
//                       backgroundColor: Colors.red,
//                       radius: 32,
//                       child: Icon(Icons.add, color: Colors.white),
//                     ),
//                   );
//                 } else {
//                   return Container(
//                     margin: EdgeInsets.all(5),
//                     padding: EdgeInsets.all(3),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black, width: 2),
//                     ), //thickness of outer circle

//                     child: Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           fit: BoxFit.cover,
//                           image: NetworkImage(
//                             'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
//                           ),
//                         ),
//                         shape: BoxShape.circle,

//                         // border: Border.all(),
//                         // color: Colors.red,
//                       ),
//                     ),
//                   );
//                 }
//               },
//             ),
//           ),
//           SizedBox(
//             height: 105,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey.shade400, width: 1.5),
//                   ),
//                   child: IntrinsicHeight(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         contactText('Email'),
//                         VerticalDivider(
//                           width: 1,
//                           thickness: 1,
//                           color: Colors.grey.shade400,
//                         ),

//                         contactText('Site'),
//                         VerticalDivider(
//                           width: 1,
//                           thickness: 1,
//                           color: Colors.grey.shade400,
//                         ),

//                         contactText('Phone'),
//                       ],
//                     ),
//                   ),
//                 ),

//                 SizedBox(height: 30),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     buildIcon(Icons.grid_goldenratio_outlined),
//                     buildIcon(Icons.smart_display),
//                     buildIcon(Icons.person_outline_rounded),
//                     buildIcon(Icons.favorite_outline_rounded),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(height: 20),

//           Expanded(
//             child: Container(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: NetworkImage(
//                           'https://img.freepik.com/free-photo/beautiful-lake-mountains_395237-44.jpg?semt=ais_hybrid&w=740&q=80',
//                         ),
//                       ),
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     height: 150,
//                     width: 150,
//                     margin: EdgeInsets.all(5),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget profileDetails(String text1, String text2) {
//     return Column(
//       children: [
//         Text(text1, style: TextStyle(fontSize: 24)),
//         Text(text2, style: TextStyle(fontSize: 14)),
//       ],
//     );
//   }

//   Widget buildIcon(IconData icon) {
//     return
//     // padding: EdgeInsets.all(12),
//     Icon(icon);
//   }

//   Widget contactText(String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: Colors.blue,
//         fontSize: 14,
//       ),
//     );
//   }
// }

//Refactored by Splitting Widgets
import 'package:flutter/material.dart';

class InstaProfilePage extends StatelessWidget {
  const InstaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          'prajwal.b',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: const Column(
        children: [
          ProfileHeader(),
          StorySection(),
          ContactSection(),
          TabSection(),
          SizedBox(height: 20),
          Expanded(child: PostGrid()),
        ],
      ),
    );
  }
}

//
// 🔹 1. PROFILE HEADER
//
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Prajwal B.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Text(
                  'Photographer / Nepal',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
          ),

          const Expanded(
            child: Column(
              children: [
                SizedBox(height: 20),
                StatsRow(),
                SizedBox(height: 10),
                FollowSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
// 🔹 2. STATS ROW
//
class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProfileStat(value: '150', label: 'Posts'),
        ProfileStat(value: '5k', label: 'Followers'),
        ProfileStat(value: '100', label: 'Following'),
      ],
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String value;
  final String label;

  const ProfileStat({required this.value, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 24)),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}

//
// 🔹 3. FOLLOW BUTTON SECTION
//
class FollowSection extends StatelessWidget {
  const FollowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: const Text('Follow'),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue, width: 2),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.keyboard_arrow_down, color: Colors.blue),
        ),
      ],
    );
  }
}

//
// 🔹 4. STORY SECTION
//
class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const AddStoryItem();
          } else {
            return const StoryItem();
          }
        },
      ),
    );
  }
}

class AddStoryItem extends StatelessWidget {
  const AddStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(3),
      child: const CircleAvatar(
        backgroundColor: Colors.red,
        radius: 32,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
        ),
      ),
    );
  }
}

//
// 🔹 5. CONTACT SECTION
//
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.5),
            ),
            child: IntrinsicHeight(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContactText('Email'),
                  VerticalDivider(),
                  ContactText('Site'),
                  VerticalDivider(),
                  ContactText('Phone'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactText extends StatelessWidget {
  final String text;

  const ContactText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}

//
// 🔹 6. TAB SECTION
//
class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.grid_goldenratio_outlined),
        Icon(Icons.smart_display),
        Icon(Icons.person_outline_rounded),
        Icon(Icons.favorite_outline_rounded),
      ],
    );
  }
}

//
// 🔹 7. POST GRID
//
class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://img.freepik.com/free-photo/beautiful-lake-mountains_395237-44.jpg',
              ),
            ),
          ),
        );
      },
    );
  }
}
