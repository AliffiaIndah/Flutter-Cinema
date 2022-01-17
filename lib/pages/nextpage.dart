import 'package:flutter/material.dart';


class Nextpage extends StatelessWidget{

  
Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      margin: EdgeInsets.only(top : 20, bottom: 22, left: 10, right:10),
      height:56,
      child: Stack(
        children : <Widget> [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.redAccent,
              ),
            ),
          ),
            Center(
              child: Text(
                "Buat Akun Baru",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    ),
  );
}

//  List<Widget> textGenre(){
//  List<Widget> widget = [];
//  pref.genre.forEach((element) {widget.add(Text(element));});
//  return widget;
//  }
}
