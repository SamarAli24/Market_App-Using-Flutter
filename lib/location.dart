
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';
import 'hpage.dart';
import 'favorite.dart';
import 'about.dart';
import 'location.dart';



class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar
        (
        toolbarHeight: 70,


        title: Center
          (
          child:
          Text("Location" ,
            style:
            TextStyle(fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.black)


            ,),
        ),


        backgroundColor: Colors.orange,
      ),

      body: Column(
        children: [
      Card(
      child:

      Center(
      child: Container(
        height: 270,
        width: 270,


        child: ListTile(

          title:  Icon(Icons.mail_outline_rounded
            , color:Colors.blue , size: 200,),
          subtitle: Text("Drop line about us " , style :TextStyle(fontSize:25, fontWeight: FontWeight.bold , color: Colors.black)),

        ),

      ),
    ),


    ),
          Card(
            child:

            Center(
              child: Container(
                height: 80,
                width: 200,


                child: ListTile(

                title:  Icon(Icons.location_on_rounded , color:Colors.deepOrange),
                    subtitle: Text("Gulberg F.b Area ",style :TextStyle(fontSize: 20 , color: Colors.black)),

              ),

            ),
          ),



),
          Card(
            child:

            Center(
              child: Container(
                height: 80,
                width: 170,


                child: ListTile(

                  title:  Icon(Icons.mobile_screen_share_rounded , color:Colors.deepOrange),
                  subtitle: Text("0900-73294 ",style :TextStyle(fontSize: 20 , color: Colors.black)),

                ),

              ),
            ),



          ),
          Card(
            child:

            Center(
              child: Container(
                height: 70,
                width: 190,


                child: ListTile(

                  title:  Icon(Icons.lock_clock , color:Colors.deepOrange),
                  subtitle: Text("Monday-Friday ",style :TextStyle(fontSize: 20 , color: Colors.black)),

                ),

              ),
            ),



          ),
          Card(
            child:

            Center(
              child: Container(
                height: 70,
                width: 170,



                child: ListTile(


                  subtitle: Text("9:00 - 17:00 ",style :TextStyle(fontSize: 20 , color: Colors.black)),

                ),

              ),
            ),



          ),








        ],



),
    );



  }
}