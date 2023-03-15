import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:untitled8/UI/roundbuttons.dart';
import 'dart:io';
import 'dart:convert';

import '../../Backend/localPerson_signup_hold.dart';
import '../../Backend/sqlite_serv.dart';

class LocalPersonSignUpForm2 extends StatefulWidget {
final String name;
final int cnic;
final String Number;
final String DOB;
final String Photo;
SqliteService db = SqliteService();



LocalPersonSignUpForm2({super.key ,  required this.name, required this.cnic, required this.Number, required this.DOB, required this.Photo});

  @override
  State<LocalPersonSignUpForm2> createState() => _LocalPersonSignUpForm2State( );
}

bool loading = false;

TextEditingController addressController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();
//final controller = PageController(viewportFraction: 0.8, keepPage: true);





class _LocalPersonSignUpForm2State extends State<LocalPersonSignUpForm2> {

  @override
  String accoutnStatus =" check";
  void sendDataDB()
  {
    final person = LocalPerson(name: widget.name, cnic: widget.cnic, email: widget.Number, dob: widget.DOB,
        address: addressController.text, city:cityController.text, password: int.parse(passwordController.text), photo: widget.Photo);
    print(person.toMap());


    widget.db.initializeDB();
    print("!!@@@this is a check ${widget.db.doesPrimaryKeyExist(widget.cnic)}");
    (widget.db.doesPrimaryKeyExist(widget.cnic)).then((value) {
      print("vaaal !!!! :${value}"
      );

      if(value == false)
      {

        widget.db.initializeDB();
        print("!!@@@this is a check: ${widget.db.createItem(person).then((value) =>{print(value)})}");
        setState(() {
          accoutnStatus ="Account has been Created!";
        });
      }
      else {
        setState(() {
          accoutnStatus ="Sorry an Account with this CNIC already Exists!";
        });
      }


    });






  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF1C6F00),
                    Color(0xFF134B00),
                    Color(0xFF113F02)
                  ])),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 250,
        elevation: 0.0,
        title: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 32),
            ),
            Text("Tell us about yourself a bit",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                    fontWeight: FontWeight.w300))
          ],
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.green,
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    //color: Colors.green,
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFF114001),
                        borderRadius: BorderRadius.circular(100)),
                  ),

                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Address",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(

                controller: addressController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                              255, 169, 169, 169)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Your Address",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("City",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(

                controller: cityController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                              255, 169, 169, 169)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Your City",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Password",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(

                controller: passwordController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                              255, 169, 169, 169)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Confirm Password",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(

                controller: confirmPasswordController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                              255, 169, 169, 169)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Confirm Your Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 5),
              RoundButton(
                  title: 'Sign Up',
                  loading: loading,
                  height: 50,
                  width: 450,
                  onTap: () {
                    sendDataDB();

                  }),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text("Sign In",
                          style: TextStyle(
                              color: Color.fromARGB(255, 28, 100, 3),
                              fontWeight: FontWeight.bold))),


                ],


              ),
              Text(
                accoutnStatus,
                style: TextStyle(
                    color: Colors.red
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
