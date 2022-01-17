import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/tiket.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: SelectSeatPage(),
//     );
//   }
// }

class SelectSeatPage extends StatefulWidget {
  // final Ticket ticket;

  // SelectSeatPage(this.ticket);
  @override
  _SelectSeatPageState createState() => _SelectSeatPageState();
}

class _SelectSeatPageState extends State<SelectSeatPage> {
  List<String> selectedSeats = [];

  get whiteNumberFont => null;
  static const Color black = Color(0xFF000000);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          //context
              //.bloc<PageBloc>()
              //.add(GoToSelectSchedulePage(widget.ticket.movieDetail));
              
              return true;
          
        },
        child: Scaffold(
            body: Stack(
          children: <Widget>[
            Container(color: Colors.white),
            SafeArea(
                child: Container(
              color: Colors.white,
            )),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // Header
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 0),
                          padding: EdgeInsets.all(1),
                          child: GestureDetector(
                            onTap: () {
                              // context.bloc<PageBloc>().add(
                              //     GoToSelectSchedulePage(
                              //         widget.ticket.movieDetail));
                               Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, right: 0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                width: MediaQuery.of(context).size.width / 2,
                                // child: Text(
                                //   widget.ticket.movieDetail.title,
                                //   style: blackTextFont.copyWith(fontSize: 20),
                                //   maxLines: 2,
                                //   overflow: TextOverflow.clip,
                                //   textAlign: TextAlign.end,
                                // ),
                              ),
                              // Container(
                              //   width: 60,
                              //   height: 60,
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(8),
                              //       image: DecorationImage(
                              //           image: NetworkImage(imageBaseURL +
                              //               'w154' +
                              //               widget
                              //                   .ticket.movieDetail.posterPath),
                              //           fit: BoxFit.cover)),
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                    // Cinema Screen
                    Container(
                      width: 277,
                      height: 84,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/screen.jpeg"))),
                    ),
                    // Seats
                    generateSeats(),
                    SizedBox(
                      height: 30,
                    ),
              Row(
              children: <Widget>[
                Container(
                  //  padding: EdgeInsets.only(top: -30),
                  child: Column(children: <Widget>[
                    Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      height: 15.0,
                      width: 15.0,
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                    Text(
                      "Available",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10)
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15.0,
                      width: 15.0,
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.shade300
                      ),
                    ),
                    Text(
                      "Resvered",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10)
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15.0,
                      width: 15.0,
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.yellow
                          //color: Colors.white
                      ),
                    ),
                    Text(
                      "Selected",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    // Container(
                    //   padding: EdgeInsets.only(right: 10)
                    // )
                  ],
                ),
              ],
            ),
          ),
                  ],),
                )
              ],
            ),

                    // next button
                    Container(
                      padding: EdgeInsets.only(top:20),
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    backgroundColor: Colors.purple,
                    elevation: 0,
                    onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context)=>Checkout()));
                      },
                    )
                              ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ],
            )
          ],
        )
        )
        );
  }

  Column generateSeats() {
    List<int> numberOfSeats = [3, 5, 5, 5, 5];
    List<Widget> widgets = [];

    for (int i = 0; i < numberOfSeats.length; i++) {
      widgets.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          numberOfSeats[i],
          (index) => Padding(
            padding: EdgeInsets.only(
                right: index < numberOfSeats[1] - 1 ? 16 : 0, bottom: 16),
            child: SelectableBox(
              "${String.fromCharCode(i + 65)}${index + 1}",
              width: 40,
              height: 40,
              // textStyle: whiteNumberFont.copyWith(
              //   color: Color(0xFF000000),
              // ),
              isSelected: selectedSeats
                  .contains("${String.fromCharCode(i + 65)}${index + 1}"),
              onTap: () {
                String seatNumber =
                    "${String.fromCharCode(i + 65)}${index + 1}";
                setState(() {
                  if (selectedSeats.contains(seatNumber)) {
                    selectedSeats.remove(seatNumber);
                  } else {
                    selectedSeats.add(seatNumber);
                  }
                });
              },
              isEnabled: index != 0,
            ),
          ),
        ),
      ));
    }

    return Column(children: widgets);
  }
}

class SelectableBox extends StatelessWidget {
  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  String? text;
  final Function? onTap;
  TextStyle? textStyle;

  SelectableBox(this.text,
      {this.isSelected = false,
      this.isEnabled = true,
      this.width = 144,
      this.height = 60,
      this.onTap,
      this.textStyle
      });

  get blackTextFont => null;

  get accentColor2 => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: (!isEnabled)
                  ? Color(0xFFE4E4E4)
                  : isSelected ? Colors.yellow : Colors.transparent ,
              border: Border.all(
                  color: (!isEnabled)
                      ? Color(0xFFE4E4E4)
                      : isSelected ? Colors.transparent : Color(0xFFE4E4E4))),
          child: Center(
            child: Text(
             text ?? "None",
              style: TextStyle(
                 color: Colors.black,
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
               ),
                  
              // style: TextStyle(
              //   color: Colors.black,
              //   fontSize: 16,
              //   fontWeight: FontWeight.w400,
              // ),
            ),
          ),
            
        )
        );
  }
}