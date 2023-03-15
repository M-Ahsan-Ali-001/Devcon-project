import 'package:flutter/material.dart';
import 'package:untitled8/Components/Opening.dart';
//import 'package:untitled8/Components/Opening.dart';
//import 'package:untitled8/Components/SignUp_page.dart';


import 'Components/Complaint/Judge_complaint.dart';
import 'Components/LocalUserSignIn/SignIn.dart';

import 'Components/Open.dart';

import 'Components/signin_page.dart';
import 'Backend/Test.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'law & Order',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
  //return  SignIn();


     return Open();
   //return SaveImageDemoSQLite ();


  }
}
