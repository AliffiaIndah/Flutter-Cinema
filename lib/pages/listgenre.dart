// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_uts/pages/tiket.dart';
// import '../custWidget/selectablebox.dart';
// // import '../model/user.dart';
// // import '../model/preferensi.dart';
// import 'nextpage.dart';
// // import 'pertama.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uts/custWidget/selectablebox.dart';
import 'package:flutter_uts/model/user.dart';
import 'package:flutter_uts/model/pref.dart';
import 'package:flutter_uts/pages/nextpage.dart';
import 'package:flutter_uts/pages/tiket.dart';
import 'package:form_field_validator/form_field_validator.dart';
//import 'pertama.dart';



class Survey_2 extends StatefulWidget{
 final List<String> genres = [
 "Horror",
 "Music",
 "Action",
 "Drama",
 "War",
 "Crime"
 ];
 final List<String> languages = ["Bahasa", "English", "Japanese", "Korean"];
 _survey_2 createState() => _survey_2();
}

class _survey_2 extends State<Survey_2>{
  //  _survey_2(this.user);
  List<String> selectedGenre =[];
  String selectedLanguage = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
               ),
               
               Container(
                 padding: EdgeInsets.only(left: 20, top: 20),
                 child: Align(
                   alignment: Alignment.centerLeft,
                   child: Container(
                     width: 160,
                     child: Text(
                       'Select Your Four Favourite Genres',
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: generateBoxGenre(),
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 160,
                      child: Text(
                        'Movie Language You Prefer?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: generateBoxLanguage(),
                    ),
                  ),
                  
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.purple,
                    elevation: 0,
                    onPressed: (){
                      Pref pref = Pref(
                          genre: selectedGenre, 
                          language: selectedLanguage
                        );
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=>Checkout()));
                      },
                    )
                  ],
                ),
              )
            );
          }
          
          List<Widget> generateBoxLanguage(){
            double mywidth =
            (MediaQuery.of(context).size.width - 60 ) / 2;
            return widget.languages.map(
              (lang) => Selectablebox(
                lang,
                width: mywidth,
                isSelected: selectedLanguage == lang,
                onTap: (){
                  onSelectLanguage(lang);
                },
              )
            ).toList();
          }
          
          void onSelectLanguage(String lang){
            setState(() {
              selectedLanguage = lang;
            }
          );
        }
        
        List<Widget> generateBoxGenre(){
          double mywidth =
          (MediaQuery.of(context).size.width - 60 ) / 2;
          return widget.genres.map(
            (genre) => Selectablebox(
              genre,
              width: mywidth,
              isSelected: selectedGenre.contains(genre),
              onTap: (){
                onSelectGenre(genre);
              },
            )
          ).toList();
        }
        
        void onSelectGenre(String genre) {
          if (selectedGenre.contains(genre)) {
            setState(() {
              selectedGenre.remove(genre);
            }
          );
        } else {
          if (selectedGenre.length < 4) {
            setState(() {
              selectedGenre.add(genre);
            }
          );
        }
      }
    }
  }
