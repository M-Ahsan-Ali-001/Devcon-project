import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/UI/roundbuttons.dart';
import 'package:flutter/material.dart';

import 'lawyer_signup_form_2.dart';

class LawyerSignUpForm1 extends StatefulWidget {
  const LawyerSignUpForm1({super.key});

  @override
  State<LawyerSignUpForm1> createState() => _LawyerSignUpForm1State();
}

bool loading = false;
TextEditingController cnicController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final controller = PageController(viewportFraction: 0.8, keepPage: true);

class _LawyerSignUpForm1State extends State<LawyerSignUpForm1> {
  @override
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
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFF114001),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
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
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Name",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(
                maxLength: 13,
                controller: passwordController,
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
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("CNIC",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(
                maxLength: 13,
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
                    hintText: "Enter Your CNIC",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(
                maxLength: 13,
                controller: passwordController,
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
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("DOB",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ],
              ),
              TextFormField(
                maxLength: 13,
                controller: passwordController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today_rounded),
                    counterText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(
                              255, 169, 169, 169)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "DD/MM/YY",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 5),
              RoundButton(
                  title: 'Next',
                  loading: loading,
                  height: 50,
                  width: 450,
                  onTap: () {
                    setState(() {
                      loading = true;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LawyerSignUpForm2()));
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
            ],
          ),
        ),
      ),
    );
  }
}
