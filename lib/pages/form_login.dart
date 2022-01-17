// import 'package:flutter/material.dart';
// import 'package:flutter_uts/pages/login.dart';
// // import 'package:flutter_uts/pages/film_genre.dart';
import 'package:flutter_uts/pages/listgenre.dart';

import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/film_genre.dart';
import 'package:flutter_uts/pages/login.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_uts/model/user.dart';
//import 'prosesLogin.dart';

class Form_login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return formLoginState();
  }
}

class formLoginState extends State<Form_login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPass = TextEditingController();
  TextEditingController _nama = TextEditingController();
  final user = User(nama: '', email: '', password: '');

  // String name = "";
  // String email = "";
  // String password = "";
  // String confirm_pass = "";
  // String text = "";
  // bool selected = false;

  // void onChanged(String val) {
  //   setState(() {
  //     this.name = val;
  //     this.email = val;
  //     this.password = val;
  //     this.confirm_pass = val;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Login();
                                },
                              ));
                            },
                            child: new Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 15.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple.shade200,
                              onPrimary: Colors.deepPurple,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Create New Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Divider(),
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.network(
                              'https://peopleshub.org/wp-content/uploads/2018/04/person-icon-white.png',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          radius: 50,
                        ),
                        Container(
                            height: 10,
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                        TextFormField(
                          controller: _nama,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                            labelText: 'Full Name',
                            border: OutlineInputBorder(),
                          ),
                          validator:
                              RequiredValidator(errorText: "Harus diisi"),
                        ),
                        Container(
                            height: 10,
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                        TextFormField(
                          controller: _email,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          validator: MultiValidator([
                            EmailValidator(errorText: "Format email salah"),
                            RequiredValidator(errorText: "Harus diisi")
                          ]),
                        ),
                        Container(
                            height: 10,
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                        TextFormField(
                            controller: _password,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Harus diisi"),
                              MinLengthValidator(8,
                                  errorText: "Password minimal 8 karakter")
                            ])),
                        Container(
                            height: 10,
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                        TextFormField(
                            controller: _confirmPass,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              labelText: 'Confirm Password',
                              border: OutlineInputBorder(),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "harus diisi";
                              }
                              return MatchValidator(
                                      errorText: "Password tidak sama")
                                  .validateMatch(val, _password.text);
                            }),
                        Container(
                            height: 10,
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5)),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              user.nama = _nama.text;
                              user.email = _email.text;
                              user.password = _confirmPass.text;
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProsesLogin(user: user)));
                              }
                            },
                            child: new Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18.0,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(23),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
