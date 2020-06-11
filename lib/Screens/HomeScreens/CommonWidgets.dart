import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

HomeScreenDestination homeDestination = HomeScreenDestination();

class RecentBookings{

  Widget recentBooking(String name, String price, String date){
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right: 15.0,left: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(name,style: homeDestination.topCardsubhead,),
                SizedBox(
                  height: 5.0,
                ),
                Text(price,style: homeDestination.topCardsubhead,)
              ],
            ),
            Column(
              children: <Widget>[
                Text(date,style: homeDestination.topCardsubhead,),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star,color: Colors.green,),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
 
  Widget circularAnalytic(String title){
    return Column(
            children: <Widget>[
            CircleAvatar(
            radius: 40,
              backgroundColor: Colors.black,
            ),
            SizedBox(
              height: 5.0
            ),
            Text(title,style: homeDestination.lebelStyle,)
            ],
          );
        }
    
    
}