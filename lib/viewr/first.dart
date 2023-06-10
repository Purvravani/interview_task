import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 250,
        height: 200+20,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade400,border: Border.all()),
        child: Column(
          children: [
            Container(margin: EdgeInsets.fromLTRB(0,15,0,0),child: TextField(controller: t1,decoration: InputDecoration(labelText: "Enter email"),)),
            Container(margin: EdgeInsets.fromLTRB(0,15,0,15),child: TextField(controller: t2,decoration: InputDecoration(labelText: "Enter pass"),)),
            CupertinoButton(child: Text("Submit",style:
              TextStyle(color: Colors.amberAccent),), onPressed: () {

            },)
          ],
        ),
      )),
    );
  }
}
