import 'package:flutter/material.dart';
import 'package:flutter_uts/pages/listgenre.dart';
import 'package:flutter_uts/pages/tiket_1.dart';

class Checkout extends StatefulWidget {
  //  final Ticket ticket;

  // CheckoutPage(this.ticket);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>{
  @override
Widget build(BuildContext context){
 // int total = 26500 * widget.ticket.seats.length;
  int total = 26500;
  return WillPopScope(
    onWillPop: () async{
      // context
      // .read<PageBloc>()
      // .add(GoToSelectSeatPage(widget.ticket));
      return true;
    }, 
    child: Scaffold(
      body: Stack (
        children: <Widget>[
          Container(
            //color: accentColor1,
            color: Colors.blue,
            ),
            SafeArea(
              child:Container(
                color: Colors.white,
                )),
                ListView(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                            margin:
                            EdgeInsets.only(top: 34, left: 20),
                            //EdgeInsets.only(top: 10),
                            //tambah
                            //alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(1),
                            //padding: EdgeInsets.only(top: 10),
                            child: GestureDetector(
                            //child: ElevatedButton(
                              onTap: (){
                                // context
                                //     .read<PageBloc>()
                                //     .add(GoToSelectSeatPage(widget.ticket));
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                //size:15.0,
                              ),
                              ),
                          ),
                          ],
                        ),
                        //     BlocBuilder<UserBloc, UserState>(builder: (_, userState) {
                        // User user = (userState as UserLoaded).user;
                            // return Column(
                               Container(
                              child: Column(
                                children: <Widget>[
                                    Container(
                                margin: EdgeInsets.symmetric(vertical:20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Checkout\nMovie",
                                        style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20, 
                                        fontWeight: FontWeight.bold,
                                       ),
                                        textAlign: TextAlign.center,
                                    ),
                                  ],
                                  ),
                                  ),
                                 //Movie Description
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        width: 120,
                                        height: 150,
                                        margin: EdgeInsets.only(left: 10, right: 20),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                           image: DecorationImage(
                                             image: 
                                            //  NetworkImage(imageBaseURL +
                                            //   'w342' +
                                            //   widget.ticket.movieDetail
                                            //       .posterPath),
                                            AssetImage("assets/Koya_BT21.png"),
                                                fit: BoxFit.cover,
                                           ),
                                           ),
                                           ),
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: <Widget>[
                                               SizedBox(
                                                width: 
                                                MediaQuery.of(context).size.width-
                                                2 * 80 -
                                                70 -
                                                20,
                                                child: Text(
                                                   //widget.ticket.movieDetail.title,
                                                  'KKN Desa Penari',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                     fontWeight: FontWeight.bold),
                                                    maxLines: 2,
                                                    overflow: TextOverflow.clip,
                                                    ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context).size.width -
                                                  2 * 60 - 
                                                  70 -
                                                  20,
                                                  margin: EdgeInsets.symmetric(vertical: 6),
                                                  child: Text(
                                                  //   widget.ticket.movieDetail
                                                  //  .genresAndLanguage,
                                                    'Horor-Indonesia',
                                                    style: TextStyle(
                                                     color: Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                                  ),
                                                  ),
                                                  // RatingStars(
                                                  //   voteAverage:
                                                  //   widget.ticket.movieDetail.voteAverage,
                                                  //   color: Colors.amberAccent,
                                                  // )
            
                                             ],
                                             )   
                                    ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 16),
                                      child: Divider(
                                        color: Color(0xFFE4E4E4),
                                        thickness: 1,
                                        ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "Order ID",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400),
                                                ),
                                                Text(
                                                  //widget.ticket.bookingCode,
                                                  '123456',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                          ),
                                          ),
                                          SizedBox(
                                            height: 9,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 50),
                                            child:Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            Text(
                                              "Cinema",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width *
                                              0.55,
                                              child: Text(
                                                //widget.ticket.theater.name,
                                                "Paris van Java",
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                              ),
                                            )
                                        ],
                                            ),
                                          ),
                                          SizedBox(
                                             height: 9,
                                            // width: MediaQuery.of(context).size.width *
                                            //   0.55,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 50),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Date & Time",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400),
                                                  ),
                                                  Text(
                                                 // widget.ticket.time.dateAndTime,
                                                  '22 Maret 2021',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400),
                                                )
                                                ],
                                              ),
                                          ),     
                                             SizedBox(
                                               height: 9,
                                             ),
                                             Padding(
                                               padding: EdgeInsets.symmetric(
                                                 horizontal: 50),
                                                 child: Row(
                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                   children: <Widget>[
                                                     Text(
                                                       "Seat Numbers",
                                                       style: TextStyle(
                                                         color: Colors.grey,
                                                         fontSize: 16,
                                                         fontWeight: FontWeight.w400),
                                                     ),
                                                     SizedBox(
                                                         width: MediaQuery.of(context).size.width * 0.25,
                                                        //  width: 25,
                                                         child: Text(
                                                           //widget.ticket.seatsInString,
                                                           "B2, B3",
                                                           style: TextStyle(
                                                             color: Colors.black,
                                                             fontSize: 16,
                                                             fontWeight: FontWeight.w400),
                                                             textAlign: TextAlign.end,
                                                         ),
                                                         )
                                                   ],
                                                   ),
                                             ),
                                             SizedBox(
                                            height: 9,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 50),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    "Price",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400),
                                                  ),
                                                  Text(
                                                    //"IDR 25.000 x ${widget.ticket.seats.length}",
                                                    "IDR 50.000",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400),
                                                  )
                                                ],
                                                ),
                                                ),
                                                SizedBox(
                                                height: 9,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 50),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Fee",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                     Text(
                                                       //"IDR 1.500 x ${widget.ticket.seats.length}",
                                                       "IDR 85.000,00",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                                ),
                                                SizedBox(
                                                  height: 9,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 50),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "Total",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400),
                                                    ),
                                                    Text(
                                                      //  NumberFormat.currency(
                                                      //     locale: 'id_ID',
                                                      //     decimalDigits: 0,
                                                      //     symbol: 'IDR ')
                                                      // .format(total),
                                                      "IDR 85.000,00",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600),
                                                    )
                                                  ],
                                                ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.symmetric(
                                                    vertical: 20, horizontal: 50 ),
                                                    child: Divider(
                                                    color: Color(0xFFE4E4E4),
                                                    thickness: 1,
                                                    ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 60),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: <Widget>[
                                                          Text(
                                                            "Your Wallet",
                                                            style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 16,  
                                                            fontWeight: FontWeight.w400),
                                                          ),
                                                          Text(
                                                          //     NumberFormat.currency(
                                                          //     locale: 'id_ID',
                                                          //     decimalDigits: 0,
                                                          //     symbol: 'IDR ')
                                                          // .format(user.balance),
                                                          "IDR 85.000,00",
                                                          style: TextStyle( 
                                                            // color: user.balance >= total
                                                            // ? Color(0xFF3E9D9D)
                                                            // : Color(0xFFFF5C83),
                                                            color: Color(0xFF3E9D9D),
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600),
                                                            ),
                                                        ],
                                                        ),
                                                    ),
                                                    Container(
                                                      width: 250,
                                                      height: 46,
                                                      margin: EdgeInsets.only(top: 36, bottom: 50),
                                                      child: RaisedButton(
                                                        elevation: 0,
                                                        //  color: user.balance >= total
                                                        //   ? Color(0xFF3E9D9D)
                                                        //   : mainColor,
                                                        color: Color(0xFF3E9D9D),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8)),
                                                          child: Text(
                                                            //  user.balance >= total
                                                            //     ? "Checkout Now"
                                                            //     : "Top Up My Wallet",
                                                            "Checkout Now",
                                                            style: TextStyle(
                                                              color: Colors.white
                                                            ),
                                                          ),
                                                            onPressed:(){
                                                              Navigator.push(context, 
                                                              MaterialPageRoute(
                                                                builder: (BuildContext context){
                                                                return Tiket();
                                                          //      if (user.balance >= total) {
                                                          //   FlutixTransaction transaction =
                                                          //       FlutixTransaction(
                                                          //           userID: user.id,
                                                          //           title: widget
                                                          //               .ticket.movieDetail.title,
                                                          //           subtitle:
                                                          //               widget.ticket.theater.name,
                                                          //           time: DateTime.now(),
                                                          //           amount: -total,
                                                          //           picture: widget.ticket.movieDetail
                                                          //               .posterPath);

                                                          //   context.read<PageBloc>().add(
                                                          //       GoToSuccessPage(
                                                          //           widget.ticket
                                                          //               .copyWith(totalPrice: total),
                                                          //           transaction));
                                                          // } else {
                                                          //   FlutixTransaction transaction =
                                                          //       FlutixTransaction(
                                                          //           userID: user.id,
                                                          //           title: widget
                                                          //               .ticket.movieDetail.title,
                                                          //           subtitle:
                                                          //               widget.ticket.theater.name,
                                                          //           time: DateTime.now(),
                                                          //           amount: -total,
                                                          //           picture: widget.ticket.movieDetail
                                                          //               .posterPath);

                                                          //   context.read<PageBloc>().add(
                                                          //       GoToTopUpPage(GoToSuccessPage(
                                                          //           widget.ticket
                                                          //               .copyWith(totalPrice: total),
                                                          //           transaction)));
                                                          // }
                                                            }
                                                      ),
                                                    );  
                                                            }),
                                                    )
                                ],
                              ),
                            ),
                      ],
                    ),
                           
                              
                  ],
                )
        ],
            ),            
    ),
  );
  
}
}