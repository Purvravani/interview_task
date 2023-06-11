import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class demo extends GetxController {
 bool ?temp;
 RxList list=[].obs;
  Future<Database> get_data() async {
// Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

// Delete the database
    await deleteDatabase(path);

// open the database
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE contact_book (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, contact TEXT,DOB TEXT,pass TEXT,cpss TEXT )');
    });
    return database;
  }
  Future get_contact()
async  {
    temp=false;
    get_data().then((value) {
      String qur="select * from contact_book";
      value.rawQuery(qur).then((value) {
        list.value=value;
        temp=true;
      });
    });

  }
 Future add_contact(String name,String email,String dob,String pass,String cpass)
 async {
    get_data().then((value) {
      String qry="insert into contact_book values(null,'$name','$email','$dob','$pass','$cpass')";
      value.rawInsert(qry);
      if(value==1)
        {
          get_contact();
          print(value);
        }

    });
  }


}
