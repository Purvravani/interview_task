import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Controller extends ChangeNotifier {
  List l = [];

  gethttp(
      String name, String email, String dob, String pass, String cpass) async {
    var url = Uri.parse('https://purv1.000webhostapp.com/add_contact.php');
    var response = await http.post(url, body: [
      {'name': '$name', 'email': '$email', 'dob': '$dob','pass':'$pass','cpass':'$cpass'}
    ]);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    notifyListeners();
  }
}
