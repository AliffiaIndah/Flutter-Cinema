import 'package:flutter/material.dart';
import '../model/user.dart';
//import 'survey.dart';

class User {
 String email;
 String password;
 User({required this.email, required this.password});
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
          Text(user.email),
          Text(user.password),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.purple,
            elevation: 0,
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Survey()));
            },
          )
        ],
      ),
    );
  }
}