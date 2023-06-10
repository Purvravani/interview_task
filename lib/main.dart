import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/controller/controller.dart';
import 'package:interview_task/viewr/task.dart';
import 'package:provider/provider.dart';

import 'viewr/viwer.dart';

void main() {
  runApp(
    MaterialApp(
        home: ChangeNotifierProvider(
      create: (BuildContext context) {
        controller();
      },
      child: second(),
    )),
  );
}
