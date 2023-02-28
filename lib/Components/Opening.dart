
import 'package:flutter/material.dart';

class Opening extends StatefulWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  _OpeningState createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1C6F00) , Color(0xFF134B00) , Color(0xFF113F02)])),


      child: Scaffold(
        backgroundColor:Colors.transparent,
        body: SafeArea(

          child: SingleChildScrollView(
            child: Column(
              children: [

                Container( // container for heading
                  padding: EdgeInsets.fromLTRB(24, 140, 137, 0),
                  child: Text("Law & Order",style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: "Inter",
                    fontSize: 64,
                    fontWeight: FontWeight.w900,
                  ), ),
                ),

                Container( // container for heading text
                  padding: EdgeInsets.fromLTRB(24, 16, 20, 0),
                  child: Text("Yorem ipsum dolor sit amet, "
                      "consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis."
                    ,style: TextStyle(
                    color: Color(0xFFD6D6D6),
                        fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      height:1.5

                  ),
                  maxLines: 3,

                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(149, 20, 20, 0),
                  child: Image.asset("assets/Image.png"),
                )









              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(10, 289, 163, 56),
          child: FloatingActionButton(

            onPressed:(){} ,
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),


          ),
        ),
       
      ),
    );

  }
}
