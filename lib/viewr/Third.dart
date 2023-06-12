import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_task/controller/controller.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    demo d = Get.put(demo());
    d.get_contact();
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.blue.shade400),
      height: double.infinity,
      width: double.infinity ,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Obx(() => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ListTile(title: Text("${d.list.value[index]}")),
              ));
        },
      ),
    ));
  }
}
