
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';
import 'hpage.dart';
import 'favorite.dart';
import 'about.dart';
import 'location.dart';



class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar
        (
        toolbarHeight: 60,


        title: Center
          (
          child:
          Text("About" ,
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
        height: 250,
        width: 220,


        child: ListTile(

          title:  Icon(CupertinoIcons.person, color:Colors.blue , size: 180,),
          subtitle: Text("SAMAR ALI" , style :TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.black)),

        ),

      ),
    ),


    ),
          Card(


              child: Container(
                height: 80,
                width: 400,


                child: ListTile(

                  leading:  Text("Email: ",style :TextStyle(fontSize: 20 , color: Colors.deepOrange)),
                  title: Text("abc12@gmail.com" ,)
    ),

                ),


            ),

          Card(

              child: Container(
                height: 80,
                width: 400,


                child: ListTile(

                    leading:  Text("Phone Number : ",style :TextStyle(fontSize: 20 , color: Colors.deepOrange)),
                    title: Text("090078601" ,)
                ),

              ),


          ),
          Card(

              child: Container(
                height: 80,
                width: 400,


                child: ListTile(

                    leading:  Text("Date Of Birth : ",style :TextStyle(fontSize: 20 , color: Colors.deepOrange)),
                    title: Text("1-1-1990" ,)
                ),

              ),


          ),
          Card(

              child: Container(
                height: 80,
                width: 400,


                child: ListTile(

                    leading:  Text("City:",style :TextStyle(fontSize: 20 , color: Colors.deepOrange)),
                    title: Text("Karachi" ,)
                ),

              ),


          ),






        ],),
    );




  }
}
