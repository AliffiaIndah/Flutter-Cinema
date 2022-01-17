import 'package:flutter/material.dart';
// import '../model/preferensi.dart';
import 'package:flutter_uts/pages/tiket.dart';
// import 'movies.dart';
import 'topup.dart';

class Tiket extends StatefulWidget{
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _tiket();
  }
}

class _tiket extends State<Tiket>{
  void initState() {
    super.initState();

    //isExpiredTickets = widget.isExpiredTicket;
  }

  Widget build(BuildContext context){
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tiket'),
            bottom: const TabBar(
                tabs:[
                  Tab(text: 'Newest'),
                  Tab(text: 'Oldest'),
                ]
              ),
            ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.account_balance_wallet_outlined),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Topup()));
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 60,
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)=>Checkout()
                          )
                          );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airplay,
                          color: Colors.grey,
                        ),
                        Text(
                            'New Movies',
                            style: TextStyle(color: Colors.grey)
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 60,
                    onPressed: (){

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airplane_ticket,
                          color: Colors.blue,
                        ),
                        Text(
                            'My Tickets',
                            style: TextStyle(color: Colors.blue)
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}

abstract class HeaderClipper extends CustomClipper<Path>{
  @override
  Path getclip(Size size){
    Path path = Path();
    
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(0, size.height, 20, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(
    size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
  class TicketViewer extends StatelessWidget{
    // final List<Ticket> tickets;
    // final List<> tickets;

    // TicketViewer(this.tickets);
    var tickets;
    @override
    Widget build(BuildContext context){
      var sortedTickets = tickets;sortedTickets
      .sort((ticket1, ticket2) => ticket1.time.compareTo(ticket2.time));

      return ListView.builder(
        itemCount: sortedTickets.length,
        itemBuilder: (_,index) => GestureDetector(
          onTap:(){
              Navigator.push(context, 
              MaterialPageRoute(
              builder: (BuildContext context){
              return Tiket();
              }
               ),
                 );     
                 },
          child: Container(
            margin: EdgeInsets.only(top: index == 0 ? 133 : 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: 
                      AssetImage("assets/images/film.jpg" + 'w500' + sortedTickets[index].movieDetail.posterPath),
                      fit: BoxFit.cover,
                      ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                SizedBox(
                    width:
                    MediaQuery.of(context).size.width - 
                  2* 80 -
                  70 -
                  16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        sortedTickets[index].movieDetail.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: 6,
                        ),
                        Text(
                          sortedTickets[index]
                          .movieDetail
                          .genresAndLanguange,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          sortedTickets[index].theater.name,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                    ],
                  )
                )
              ],
            ),
          ),
        ),
        );
    }
  }
