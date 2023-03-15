import 'package:flutter/material.dart';

import '../../UI/contianerText.dart';
import '../../UI/roundbuttons.dart';
import '../Complaint/Complaint_area.dart';
import '../JugeSignUp/Juge_Sign_up_form_2.dart';

class Login_Page extends StatefulWidget {
final name;
  Login_Page({super.key, this.name});

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final key = GlobalKey<ScaffoldState>();
  TextEditingController cnicController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color _circle = Color(0xFFDAF6CF);
  Color _bordeColor = Color(0xFFD0D5DD);
  Color _selectedBordeColor = Color(0xFF1D6703);
  int option = 0;

  void chose(int value) {
    option = value;
    print("option is ${option}");
  }

  void navigate()
  {
    if(option == 4)
      {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ComplaitArea()


            ));
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  const Color.fromRGBO(132, 152, 120, 1),
        key: key,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 200,
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
                  Text("HI! "+widget.name,style: TextStyle(
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
                      Text("Select Option",style: TextStyle(
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w600,


                          fontSize: 16,
                          color: Color(0xFF1D2939)
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                          chose(0);
                        },
                        child: ListBox(mainText: 'My Case',
                        hintText: 'See your previous record in court',
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          chose(1);
                        },
                        child: ListBox(mainText: 'Case Progress',
                          hintText: 'See your case progress',
                        ),
                      ),


                      InkWell(
                        onTap: (){
                          chose(3);
                        },
                        child: ListBox(mainText: 'New Case',
                          hintText: 'File a new case ',
                        ),
                      ),


                      InkWell(
                        onTap: (){
                          chose(4);
                        },
                        child: ListBox(mainText: 'Complaint',
                          hintText: 'Complaint against Judge/lawyer',
                        ),
                      ),

                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: RoundButton(
                            title: 'Next',
                            loading: loading,
                            height: 50,
                            width: 450,
                            onTap: () {
                              setState(() {
                                loading = true;
                                navigate();
                              });

                            }),
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