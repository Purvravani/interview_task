
import 'package:flutter/material.dart';

import 'Third.dart';
import 'first.dart';
import 'viwer.dart';

class Task_1 extends StatefulWidget {
  const Task_1({super.key});

  @override
  State<Task_1> createState() => _Task_1State();
}

class _Task_1State extends State<Task_1> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:  Scaffold(
      appBar: AppBar(
        title: Text("User-integraction"),
        bottom: TabBar(tabs: [
          Tab(
              child: IconButton(
                onPressed: () {
                  Task_1();
                },
                icon: Icon(Icons.verified_user_outlined),
              )),
          Tab(
            child: IconButton(
              onPressed: () {
                second();
              },
              icon: Icon(Icons.person),
            ),
          ),
          Tab(
            child: IconButton(
                onPressed: () {
                  Third();
                }, icon: Icon(Icons.supervised_user_circle)),
          )
        ]),
      ),
      body: TabBarView(children: [
        First(),
        second(),
        Third()
      ]),
    ));
  }
}