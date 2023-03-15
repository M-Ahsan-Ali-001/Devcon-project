// import 'package:flutter/material.dart';
//
// import 'dart:io';
// import 'dart:convert';
// import 'package:untitled8/Backend/localPerson_signup_hold.dart';
// import 'package:untitled8/Backend/sqlite_serv.dart';
//
// import 'DBHelper.dart';
// import 'localPerson_signup_hold.dart';
// import 'dart:async';
// import 'package:image_picker/image_picker.dart';
// class SaveImageDemoSQLite extends StatefulWidget {
//   //
//   SaveImageDemoSQLite() : super();
//
//   final String title = "Flutter Save Image";
//
//   @override
//   _SaveImageDemoSQLiteState createState() => _SaveImageDemoSQLiteState();
// }
//
// class _SaveImageDemoSQLiteState extends State<SaveImageDemoSQLite> {
//   //
//   late Future<File> imageFile;
//   late Image image;
//   late DBHelper dbHelper;
//
//   SqliteService db = SqliteService();
//   late  String bgimg ;
//   late List<LocalPerson> images;
//   final ImagePicker _picker = ImagePicker();
//   //late List<dynamic> hold ;
//
//   @override
//   void initState() {
//     super.initState();
//     images = [];
//     dbHelper = DBHelper();
//     db.getClient(15081).then((Map<String, dynamic>? client){
//       if (client != null) {
//         print("Fetched");
//         print(client);
//       } else {
//         print('Client not found');
//       }
//       bgimg = client!['photo'];
//       print('image:${client!['photo']}');
//
//     });
//     refreshImages();
//   }
//
//   refreshImages() {
//     dbHelper.getPhotos().then((imgs) {
//       setState(() {
//         images.clear();
//         images.addAll(imgs);
//         // hold = imgs;
//         // print('hold:${hold}');
//         //
//         // for (int i = 0; i < hold.length; i++) {
//         //   print("!!!");
//         //   print(hold[i]['cnic']);
//         // }
//       });
//     });
//   }
//
//
//   void pickImageFromGallery() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     final pickedImageBytes =  await  pickedImage?.readAsBytes();
//     final pickedImageBase64 = base64Encode(pickedImageBytes!);
//     print("!!!!!!!!!!!!!!");
//     print(pickedImageBase64 );
//     print("!!!!!!!!!!!!!!");
//     final person = LocalPerson(name: 'test', cnic: 17781, email: 'aa', dob: '12',
//         address: "a", city: 'aa', password: 12212, photo: pickedImageBase64);
//     print(person.toMap());
//     db.initializeDB();
//     print("!!@@@this is a check ${db.createItem(person)}");
//    // print("_++__retv!!!! ${db.getClient(15081)}");
//     db.getClient(15081).then((Map<String, dynamic>? client){
//       if (client != null) {
//         print("Fetched");
//         print(client);
//       } else {
//         print('Client not found');
//       }
//       bgimg = client!['photo'];
//       print('image:${client!['photo']}');
//
//     });
//    // print("retv!!!! ${db.getAllUsers()}");
//   }
//
//
//
//   // pickImageFromGallery() {
//   //   _picker.pickImage(source: ImageSource.gallery).then((imgFile) {
//   //     String imgString = base64Encode(imgFile?.readAsBytesSync());
//   //    LocalPerson photo = LocalPerson(name: 'test',cnic: 12,email: 'aa'
//   //        ,dob: '12',address: "a",city: 'aa',password: 12212,photo: imgString);
//   //     dbHelper.save(photo);
//   //     refreshImages();
//   //   });
//   // }
//
//   // gridView() {
//   //   return Padding(
//   //     padding: EdgeInsets.all(5.0),
//   //     child: GridView.count(
//   //       crossAxisCount: 2,
//   //       childAspectRatio: 1.0,
//   //       mainAxisSpacing: 4.0,
//   //       crossAxisSpacing: 4.0,
//   //       children: images.map((photo) {
//   //         return base64Decode(photo.name);
//   //       }).toList(),
//   //     ),
//   //   );
//   // }
//
//   gridView() {
//     return Padding(
//       padding: EdgeInsets.all(5.0),
//       child: GridView.count(
//         crossAxisCount: 2,
//         childAspectRatio: 1.0,
//         mainAxisSpacing: 4.0,
//         crossAxisSpacing: 4.0,
//         children: images.map((Photo) {
//           return Image.memory(
//             base64Decode(Photo.photo),
//             fit: BoxFit.cover,
//           );
//         }).toList(),
//       ),
//     );
//   }
//
//   // listView(){
//   //   return ListView.builder(
//   //       padding: const EdgeInsets.all(8),
//   //       itemCount: hold.length,
//   //       itemBuilder: (BuildContext context, int index) {
//   //         return Text(hold[index]);
//   //       }
//   //   );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: () {
//               pickImageFromGallery();
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Flexible(
//               child: Container(
//                 child: Image.memory(
//                   base64Decode(bgimg),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }