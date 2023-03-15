import 'package:flutter/material.dart';

import '../../UI/contianerText.dart';
import '../../UI/roundbuttons.dart';
import '../JugeSignUp/Juge_Sign_up_form_2.dart';

class Juge_complaint extends StatefulWidget {
  @override
  _Juge_complaintState createState() => _Juge_complaintState();
}

class _Juge_complaintState extends State<Juge_complaint> {
  final key = GlobalKey<ScaffoldState>();
  TextEditingController cnicController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color _circle = Color(0xFFDAF6CF);
  Color _bordeColor = Color(0xFFD0D5DD);
  Color _selectedBordeColor = Color(0xFF1D6703);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  const Color.fromRGBO(132, 152, 120, 1),
        key: key,
        appBar: AppBar(
          toolbarHeight: 200,

          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 30,10),
            child: Image.asset('assets/hammerpng.png', fit: BoxFit.cover),
          ),


          centerTitle: true,
          //leading:        Icon(Icons.arrow_back) ,
          backgroundColor: const Color.fromRGBO(132, 152, 120, 1),

          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back,color: Colors.white, size:30,),
                  Text("Hi Wahaj!",style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),),

                  Icon(Icons.menu,color: Colors.white, size:30,)

                ],
              )),
            ),
          ),
          // actions: [


          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.menu),
          //   )
          // ],
        ),

        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(

            children: <Widget>[
              Container(
                child: SingleChildScrollView(
                  physics: PageScrollPhysics(),
                  child: Column(
                    children: [

                      SizedBox(
                        height: 25,
                      ),
                      Text("Complaint Here! ",style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w600,


                          fontSize: 16,
                          color: Color(0xFF1D2939)
                      ),),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Judge Name",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 96, 96, 96))),
                              ],
                            ),
                            TextFormField(
                              maxLength: 13,

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
                                  hintText: "Enter Juge Name",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Bar Council Number",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 96, 96, 96))),
                              ],
                            ),
                            TextFormField(
                              maxLength: 13,

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
                                  hintText: "Enter Council Number",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),

                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Judge No",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 96, 96, 96))),
                              ],
                            ),
                            TextFormField(
                              maxLength: 13,

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
                                  hintText: "Enter Judge Number",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Case No",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 96, 96, 96))),
                              ],
                            ),
                            TextFormField(
                              maxLength: 13,

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
                                  hintText: "Enter case  Number",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Description",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 96, 96, 96))),
                              ],
                            ),
                            TextFormField(
                              maxLength: 500,



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
                                  hintText: "Enter Description",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),

                          ],
                        ),
                      ),





                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}