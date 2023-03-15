import 'package:flutter/material.dart';
import 'package:untitled8/Components/testSign.dart';
import 'package:untitled8/UI/roundbuttons.dart';
import 'package:flutter/material.dart';

import '../Backend/sqlite_serv.dart';
import 'LocalUserSignIn/SignIn.dart';
import 'SignUp_page.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

bool loading = false;
TextEditingController cnicController = TextEditingController();
TextEditingController passwordController = TextEditingController();
SqliteService db = SqliteService();

class _SignInState extends State<SignIn> {
  void signIn(){
   late  final name ;
    db.getClient(int.parse(cnicController.text)).then((Map<String, dynamic>? client){
      if (client != null) {
        print("Fetched");
      //  print(client);
      } else {
        print('Client not found');
      }

      print('image:${client!['photo']}');
      name=client!['name'];
      db.signInUser
        (int.parse(cnicController.text), int.parse(passwordController.text)).then((value)=>{

        print("check sign in!@# :: ${value}"),

        if(value == true)
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  Login_Page(
                  name:name,
                )


                ))
          }

      });



    });





  }
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
              "Welcome Back!",
              style: TextStyle(fontSize: 32),
            ),
            Text("Please Enter your details",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                    fontWeight: FontWeight.w300))
          ],
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
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
                controller: cnicController,
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
                  Text("Password",
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
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 28, 100, 3),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(height: 5),
              RoundButton(
                  title: 'Sign in',
                  loading: loading,
                  height: 50,
                  width: 450,
                  onTap: () {
                    setState(() {
                      loading = true;
                    });
                    signIn();

                  }),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      )),
                  TextButton(
                      onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUP())
                        );
                      },
                      child: Text("Sign up",
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
