import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class demo {
List l=[];
  Future<Database> get_data() async {
// Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'purv.db');

// Delete the database
    await deleteDatabase(path);

// open the database
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE contact_book (id INTEGER PRIMARY KEY, name TEXT, contact TEXT,DOB TEXT,pass TEXT,cpss TEXT )');
    });
    return database;
  }
  add_contact(String name,String email,String dob,String pass,String cpass)
  {
    get_data().then((value) {
      String qry="insert into contact_book values('$name','$email','$dob','$pass','$cpass')";
      value.rawInsert(qry);
    });




  }

}
