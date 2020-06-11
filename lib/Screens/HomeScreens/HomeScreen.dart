import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:doorsteppartnerr/Screens/HomeScreens/CommonWidgets.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
HomeScreenDestination homeDestination = HomeScreenDestination();
RecentBookings recentBookings = RecentBookings();
class _HomeScreenState extends State<HomeScreen> {
  String bookings = "16";
  String earnings = "12000";
  String complete = "13";
  String cancel = "3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Dashboard",style: homeDestination.appBarTitle,),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0,),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Card(
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0,right: 40,left: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Bookings",style: homeDestination.topCardsubhead,),
                        SizedBox(height: 5.0),
                        Text(bookings,style: homeDestination.topCardHead,),
                        Text("Complete",style: homeDestination.topCardsubhead,),
                        SizedBox(height: 5.0),
                        Text(complete,style: homeDestination.topCardHead,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Earnings",style: homeDestination.topCardsubhead,),
                        SizedBox(height: 5.0),
                        Text("Rs${earnings}",style: homeDestination.topCardHead,),
                        Text("Cancel",style: homeDestination.topCardsubhead,),
                        SizedBox(height: 5.0),
                        Text(cancel,style: homeDestination.topCardHead,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                recentBookings.circularAnalytic("Rating"),
                recentBookings.circularAnalytic("Cancel"),
                recentBookings.circularAnalytic("Complete"),
                recentBookings.circularAnalytic("Earning")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent Bookings",style: homeDestination.lebelStyle,),
          ),
         recentBookings.recentBooking("Johan Doe", "Rs1000", "5-2-2020"),
         recentBookings.recentBooking("David Guru","Rs750","4-2-2020"),
         recentBookings.recentBooking("Johny sins","Rs3000","3-2-2020")
        ],
      ),
    );
  }
}