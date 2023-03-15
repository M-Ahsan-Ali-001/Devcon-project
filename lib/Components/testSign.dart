import 'dart:convert';

import 'package:flutter/material.dart';
class TestSign extends StatefulWidget {
  final  name;
  final cnic;
  final bgimg;

 TestSign({Key? key, required this.name, required this.cnic, this.bgimg}) : super(key: key);

  @override
  _TestSignState createState() => _TestSignState();
}

class _TestSignState extends State<TestSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(widget.name),

              Text(widget.cnic.toString()),

              Container(
                height: 300,
                width: 300,
                child: Image.memory(
                  base64Decode(widget.bgimg),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
