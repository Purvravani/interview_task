import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 350-7+14+20,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade400,border: Border.all()),
        width: 350,
        child: Column(children: [
          TextField(
            controller: t1,
            decoration: InputDecoration(labelText: "Enter name"),
          ),
          TextField(
            controller: t2,
            decoration: InputDecoration(labelText: "Enter email"),
          ),
          TextField(
            onTap: () async {
              await showDatePicker(
                confirmText: t3.text,
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2015),
                lastDate: DateTime(2025),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  t3.text = DateFormat('yyyy-MM-dd').format(selectedDate);
                }
              });
            },
            controller: t3,
            decoration: InputDecoration(labelText: "Enter DOB"),
          ),
          Container(margin: EdgeInsets.all(5),
            child: TextField(
              controller: t4,
              decoration: InputDecoration(labelText: "Enter passwd"),
            ),
          ),
          Container(
            child: TextField(
              controller: t5,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Enter confirm Passwd"),
            ),
          ),
          CupertinoButton(
            child: Text("Submit",style: TextStyle(color: Colors.amberAccent),),
            onPressed: () {},
          )
        ]),
      )),
    );
  }
}