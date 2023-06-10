import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/viewr/task.dart';
import 'package:provider/provider.dart';

import 'controller/controller.dart';

void main() {
  runApp(MaterialApp(
      home: ChangeNotifierProvider(
    create: (context) => Controller(),
    child: Task_1(),
  )));
}
