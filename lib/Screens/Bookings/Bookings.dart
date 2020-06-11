import 'package:doorsteppartnerr/SignUp/PersonalDetail.dart';
import 'package:doorsteppartnerr/SignUp/GeneralDetail.dart';
import 'package:doorsteppartnerr/SignIn/SignIn.dart';
import 'package:flutter/material.dart';
class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => GeneralDetail()
                ));
              },
              child: Text("General Detai"),
              color: Colors.redAccent,
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PersonalDetail()
                ));
              },
              child: Text("Personal Detai"),
              color: Colors.redAccent,
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignIn()
                ));
              },
              child: Text("General Detai"),
              color: Colors.redAccent,
            ),
          ],
        ),
      )
    );
  }
}