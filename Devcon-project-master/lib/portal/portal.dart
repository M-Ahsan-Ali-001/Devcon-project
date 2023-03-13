import 'package:flutter/material.dart';
import 'package:untitled8/Components/JugeSignUp/Juge_sign_up_form_1.dart';

import '../UI/roundbuttons.dart';

class Portal extends StatefulWidget {
  const Portal({super.key});

  @override
  State<Portal> createState() => _PortalState();
}

bool loading = false;
Color _circle = const Color(0xFFDAF6CF);
Color _bordeColor = const Color(0xFFD0D5DD);
Color _selectedBordeColor = const Color(0xFF1D6703);

class _PortalState extends State<Portal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 152, 120, 1),
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(132, 152, 120, 1),
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        elevation: 0.0,
        title: const Text("Insert Image here"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
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
                    title: const Text("My Case"),
                    subtitle: const Text("See your previous record in court"),
                    leading: Container(
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: _bordeColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onTap: () {},
                    title: const Text("Case Progress"),
                    subtitle:
                        const Text("Check progress of your case in Court"),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    // Local User  Button
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: _bordeColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: const Text("File new case"),
                    subtitle:
                        const Text("File new case if you have any problem"),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    // Local User  Button
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: _bordeColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: const Text("Complaint"),
                    subtitle: const Text("Yes enter sexy text here"),
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
                  const SizedBox(height: 25),
                  RoundButton(
                      title: 'Next',
                      loading: loading,
                      height: 50,
                      width: 450,
                      onTap: () {
                        setState(() {
                          loading = true;
                        });
                      }),
                  const SizedBox(height: 100),
                ],
              )),
        ),
      ),
    );
  }
}
