import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).primaryColor,
          title: Text('WhatsApp'),
          bottom: TabBar(
            // isScrollable: true,
            indicatorWeight: 5,
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: [
              Tab(icon: Icon(Icons.chat), text: 'CHATS'),
              Tab(icon: Icon(Icons.chat_bubble_outline_outlined),text: 'STATUS',),
              Tab(icon: Icon(Icons.call_sharp), text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(child: Center(child: Text('Chats'))),
            Container(child: Center(child: Text('Status'))),

            Container(child: Center(child: Text('Calls'))),
          ],
        ),
      ),
    );
  }
}
