import 'package:flutter/material.dart';
import 'package:interview_task/controller/controller.dart';
import 'package:provider/provider.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {

  @override
  Widget build(BuildContext context) {
    demo d= Provider.of(context);
    d.get_contact();
   return  Scaffold(
     body: ListView.builder(itemCount: d.list.length,itemBuilder: (context, index) {
       return  ListTile(title: Text("${d.list}"),);
     },),
   );
  }
}
