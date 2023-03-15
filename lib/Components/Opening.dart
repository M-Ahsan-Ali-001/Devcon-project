import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled8/Components/signin_page.dart';

class Oppening extends StatefulWidget {
  const Oppening({Key? key}) : super(key: key);

  @override
  _OppeningState createState() => _OppeningState();
}

class _OppeningState extends State<Oppening> with TickerProviderStateMixin {
  double opacityLevelImg = 0;
  double opacityLevelButton = 0;
  late Timer timer;
 void initState(){

   timer = Timer.periodic(Duration(seconds: 3), (Timer t) => _changeOpacityImg());
   timer = Timer.periodic(Duration(seconds: 5), (Timer t) => _changeOpacityButton());


 }
  void _changeOpacityImg() {
    //setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    setState(() {
      if (opacityLevelImg== 0)
        {
          opacityLevelImg=1.0;
        }
    });
  }
  void _changeOpacityButton() {
    //setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    setState(() {
      if (opacityLevelButton == 0)
      {
        opacityLevelButton=1.0;
      }
    });
  }



  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin:const Offset(-1.5, 0.0),
    end:  Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));
  @override

  void dispose(){
    super.dispose();
  

  }

  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFF1C6F00),
            Color(0xFF134B00),
            Color(0xFF113F02)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
               SlideTransition(//Slide Transition Effect
                   position:_offsetAnimation ,
                 child: Column(
                   children: [
                     Container(
                       // container for heading
                       padding: EdgeInsets.fromLTRB(24, 140, 137, 0),
                       child: Text(
                         "Law & Order",
                         style: TextStyle(
                           color: Color(0xFFFFFFFF),
                           fontFamily: "Inter",
                           fontSize: 64,
                           fontWeight: FontWeight.w900,
                         ),
                       ),
                     ),
                     Container(
                       // container for heading text
                       padding: EdgeInsets.fromLTRB(24, 16, 20, 0),
                       child: Text(
                         "Yorem ipsum dolor sit amet, "
                             "consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                         style: TextStyle(
                             color: Color(0xFFD6D6D6),
                             fontFamily: "Inter",
                             fontSize: 14,
                             fontWeight: FontWeight.w500,
                             letterSpacing: 0.5,
                             height: 1.5),
                         maxLines: 3,
                       ),
                     ),
                   ],

                 ),


               ),
                AnimatedOpacity(// Fade Animation on Image
                  opacity: opacityLevelImg,
                    duration: const Duration(seconds: 1),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(149, 0, 0, 0),
                    child: Image.asset("assets/Image.png"),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: AnimatedOpacity(
          opacity: opacityLevelButton,
          duration: const Duration(seconds: 1),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignIn()));
            },
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
