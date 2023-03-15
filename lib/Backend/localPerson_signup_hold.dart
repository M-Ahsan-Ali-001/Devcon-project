import 'package:flutter/cupertino.dart';

class LocalPerson {

 late  String name;
 late int cnic;
 late  String email;
 late String dob;
 late  String address;
 late String city;
 late  int password;
 late  int confirmPassword;
 late String photo;
 LocalPerson({required this.cnic , required this.name ,
  required this.email,required this.dob,required this.address,
  required this.city,required this.password,required this.photo

 });
 Map<String, dynamic> toMap() {
  var map = <String,dynamic> {
   'cnic': cnic,
   'name': name,
   'Email': email,
   'DOB': dob,
   'Address':address,
   'City':city,
   'Password':password,
   'photo':photo,

  };
  return map;
 }

 LocalPerson.fromMap(Map<String ,dynamic> map){
  cnic = map['cnic'];
  name = map['name'];
  email = map['Email'];
  dob= map['DOB'];
  address= map['Address'];
  city= map['City'];
  password=map['Password'];
  photo= map['photo'];
 }

}

