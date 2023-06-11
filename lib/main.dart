


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/controller/controller.dart';
import 'package:interview_task/viewr/task.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(
       MaterialApp(
          home: ChangeNotifierProvider(
            create: (context) => demo(),
            child: Task_1(),
          ),
        )
      );

}
