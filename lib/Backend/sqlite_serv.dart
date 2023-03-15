import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:untitled8/Backend/localPerson_signup_hold.dart';
class SqliteService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'lawbasee.db'),
      onCreate: (database, version) async {
        await database.execute("CREATE TABLE Records (cnic INTEGER  PRIMARY KEY, name TEXT, Email TEXT , DOB TEXT"
            ", Address TEXT ,  City TEXT , Password INTEGER,photo TEXT )",

        );
      },
      version: 1,
    );

  }

  Future<int> createItem( LocalPerson note) async {
    int result = 0;
    final Database db = await initializeDB();
    final id = await db.insert(
        'Records', note.toMap(),);//tAlgorithm.replace);
    return id;
  }

  Future<List> getAllUsers() async {
    final Database db = await initializeDB();
    List<Map<String, dynamic>> result = await db.query('Records');
    return result.map((e) => LocalPerson.fromMap(e)).toList();
  }

  Future<Map<String, dynamic>?> getClient(int id) async {
    Database db = await initializeDB();
    List<Map<String, dynamic>> results = await db.query('Records',
        where: 'cnic = ?', whereArgs: [id], limit: 1);
    if (results.isNotEmpty) {
      return results.first;
    } else {
      return null;
    }
  }

  Future<bool> doesPrimaryKeyExist(int primaryKey) async {
    final db = await initializeDB();
    final count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT COUNT(*) FROM Records WHERE cnic = ?',
      [primaryKey],
    ));
    return count! > 0;
  }

  Future<bool> signInUser(int primaryKey ,password) async {
    final db = await initializeDB();
    final count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT COUNT(*) FROM Records WHERE cnic = ? and Password = ?',
      [primaryKey , password],
    ));
    return count! > 0;
  }



}


