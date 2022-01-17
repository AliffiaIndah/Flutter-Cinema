import 'package:flutter/material.dart';
import '../model/user.dart';
import 'package:flutter_uts/pages/listgenre.dart';

class User {
 String nama;
 String email;
 String password;
 User({required this.nama, required this.email, required this.password});
}

class ProsesLogin extends StatelessWidget{
  final User user;
  
  ProsesLogin({required this.user});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Text(user.nama),
          Text(user.email),
          Text(user.password),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.purple,
            elevation: 0,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Survey_2()));
            },
          )
        ],
      ),
    );
  }
}