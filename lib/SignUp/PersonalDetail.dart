import 'package:doorsteppartnerr/Config/Constrains.dart';
import 'package:flutter/material.dart';
class PersonalDetail extends StatefulWidget {
  @override
  _PersonalDetailState createState() => _PersonalDetailState();
}
GeneralDetailDestination destination = GeneralDetailDestination();
class _PersonalDetailState extends State<PersonalDetail> {
  String name;
  String cnic;
  String email;
  String dropDownSelect = "City";

  @override
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30),
              child: Text("Create \nAccount",style: destination.topLebelStyle,),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 15),
              child: TextField(
                onChanged: (value){
                  name = value;
                },
                decoration: InputDecoration(
                  hintText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 15),
              child: TextField(
                onChanged: (value){
                  cnic = value;
                },
                decoration: InputDecoration(
                    hintText: "CNIC",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 15),
              child: TextField(
                onChanged: (value){
                  email = value;
                },
                decoration: InputDecoration(
                    hintText: "Email (optional)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    )
                ),
              ),
            ),
               Padding(
                 padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text("City",style: destination.lebelStyle,),
                     Container(
                       height: 55,
                       decoration: BoxDecoration(
                         border: Border.all(),
                         borderRadius: BorderRadius.circular(100),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: <Widget>[
                             DropdownButton(
                                 value: dropDownSelect,
                                 underline: Container(
                                   color: Colors.white,
                                 ),
                                 onChanged: (String newValue) {
                                   setState(() {
                                     dropDownSelect = newValue;
                                   });
                                 },
                                 items: <String>['Karachi', 'Multan', 'Lahore', 'Islamabad']
                                     .map<DropdownMenuItem<String>>((String val){
                                   return DropdownMenuItem<String>(
                                     value: val,
                                     child: Text(val),
                                   );
                                 }).toList()
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: (){},
              child: Text("Next",style: destination.btnStyle,),
              color: Colors.black,
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
