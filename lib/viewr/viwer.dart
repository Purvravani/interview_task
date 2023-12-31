import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:interview_task/viewr/Third.dart';
import 'package:intl/intl.dart';

import '../controller/controller.dart';

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
demo d=Get.put(demo());
      return Scaffold(
      body: Center(
          child: Container(
        height: 350 - 7 + 14 + 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue.shade400,
            border: Border.all()),
        width: 350,
        child: Column(children: [
          TextField(
            cursorColor: Colors.white,
            controller: t1,
            decoration: InputDecoration(labelText: "Enter name"),
          ),
          TextField(
            controller: t2,
            cursorColor: Colors.white,
            decoration: InputDecoration(labelText: "Enter email"),
          ),
          TextField(
            cursorColor: Colors.white,
            onTap: () async {
              await showDatePicker(
                confirmText: t3.text,
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1998),
                lastDate: DateTime(2025),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  t3.text = DateFormat('dd-MM-yyyy').format(selectedDate);
                }
              });
            },
            controller: t3,
            decoration: InputDecoration(labelText: "Enter DOB"),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              cursorColor: Colors.white,
              controller: t4,
              decoration: InputDecoration(labelText: "Enter passwd"),
            ),
          ),
          Container(
            child: TextField(
              cursorColor: Colors.white,
              controller: t5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter confirm Passwd"),
            ),
          ),
          CupertinoButton(
            child: const Text(
              "Submit",
              style: TextStyle(color: Colors.amberAccent),
            ),
            onPressed: () {
              String name = t1.text;
              String email = t2.text;
              String dob = t3.text;
              String pass = t4.text;
              String cpass = t5.text;
              d.add_contact(name, email, dob, pass, cpass);
              print(d.list);
            },
          )
        ]),
      )),
    );
  }
}
