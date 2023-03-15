// import 'dart:async';
// import 'dart:io' as io;
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
//
// import 'localPerson_signup_hold.dart';
//
// class DBHelper {
//   late Database _db;
//   // static const String id = 'id';
//   // static const String NAME = 'photo_name';
//   static const String TABLE = 'record';
//   static const String DB_NAME = 'lawAndOrder.db';
//   late  String name = "name";
//   late String cnic = "cnic";
//   // late  String email = "Email";
//   // late String dob="DOB";
//   // late  String address ="Address";
//   // late String city="City";
//   // late  String password="Password";
//   // late  String confirmPassword;
//   // late String photo;
//   // static String _TBname = 'record';
//   //
//
//   Future<Database> get db async {
//
//     if (null != _db) {
//       print("!!!no database");
//       return _db;
//     }
//     print("!!! database EXIST !#");
//     _db = await initDb();
//     return _db;
//   }
//
//   initDb() async {
//     io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, DB_NAME);
//     var db = await openDatabase(path, version: 1, onCreate: _onCreate);
//     return db;
//   }
//
//   _onCreate(Database db, int version) async {
//     await db.execute(
//                 "CREATE TABLE $TABLE (id INTEGER  PRIMARY KEY, name TEXT, Email TEXT , DOB TEXT"
//                     ", Address TEXT ,  City TEXT , Password INTEGER,photo TEXT )",
//               );
//   }
//
//   Future<LocalPerson> save(LocalPerson employee) async {
//     print("*******!@-Che");
//     var dbClient = await db;
//     employee.cnic= await dbClient.insert(TABLE, employee.toMap());
//     print("*******!@-Check addition :${employee.cnic}");
//     return employee;
//
//   }
//
//   Future<List<LocalPerson>> getPhotos() async {
//     var dbClient = await db;
//     List<Map<String,dynamic>> maps = await dbClient.query(TABLE, columns: ['photo']);
//     List<LocalPerson> employees = [];
//     if (maps.length > 0) {
//       for (int i = 0; i < maps.length; i++) {
//         employees.add(LocalPerson.fromMap(Map<String, dynamic>.from(maps[i])));
//         print("!!!Iterator!!!++_-");
//       }
//     }
//     return employees;
//   }
//
//   Future close() async {
//     var dbClient = await db;
//     dbClient.close();
//   }
// }