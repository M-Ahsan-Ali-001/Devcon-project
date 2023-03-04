import 'package:flutter/material.dart';
import 'package:untitled8/Components/LawyerSignUp/lawyer_signup_form_1.dart';
import 'package:untitled8/Components/signin_page.dart';

import '../UI/roundbuttons.dart';
import 'JugeSignUp/Juge_sign_up_form_1.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

bool loading = false;
TextEditingController cnicController = TextEditingController();
TextEditingController passwordController = TextEditingController();
Color _circle = Color(0xFFDAF6CF);
Color _bordeColor = Color(0xFFD0D5DD);
Color _selectedBordeColor = Color(0xFF1D6703);

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
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
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  // Juge Button
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: _selectedBordeColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JudgeSignUpForm1()));
                  },
                  title: Text("Judge"),
                  subtitle: Text("Tell us about yourself a bit"),

                  leading: Container(
                    //color: Colors.green,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: _circle,
                        borderRadius: BorderRadius.circular(100)),

                    child: Icon(
                      Icons.perm_identity_sharp,
                      color: _selectedBordeColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  // Lawyer Button
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: _bordeColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LawyerSignUpForm1()));
                  },

                  title: Text("Lawyer"),
                  subtitle: Text("Tell us about yourself a bit"),
                  leading: Container(
                    //color: Colors.green,
                    height: 50,
                    width: 50,

                    decoration: BoxDecoration(
                        color: _circle,
                        borderRadius: BorderRadius.circular(100)),

                    child: Icon(
                      Icons.label_important,
                      color: _selectedBordeColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  // Local User  Button
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: _bordeColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text("Local Person"),
                  subtitle: Text("Tell us about yourself a bit"),
                  leading: Container(
                    //color: Colors.green,
                    height: 50,
                    width: 50,

                    decoration: BoxDecoration(
                        color: _circle,
                        borderRadius: BorderRadius.circular(100)),

                    child: Icon(
                      Icons.people_rounded,
                      color: _selectedBordeColor,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                RoundButton(
                    title: 'Sign Up',
                    loading: loading,
                    height: 50,
                    width: 450,
                    onTap: () {
                      setState(() {
                        loading = true;
                      });
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()));
                        },
                        child: Text("Sign in",
                            style: TextStyle(
                                color: Color.fromARGB(255, 28, 100, 3),
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
