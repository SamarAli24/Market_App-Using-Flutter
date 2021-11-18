import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txt=TextEditingController();
  var gettext="";
  var list=[];
  submit(){
    setState(() {
      list.add(gettext);
    });
  }
  @override
  Widget build(BuildContext context) {

    return   Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,

        leading: Icon(Icons.settings , color:Colors.white),

        title: Center
          (
          child:
          Text("TODO" ,
            style:
            TextStyle(fontSize: 40,
              fontWeight:FontWeight.bold,)


            ,),
        ),
        actions: [
          CircleAvatar(
            radius: 32,
            backgroundImage:
            NetworkImage("https://image.shutterstock.com/image-vector/logo-design-template-coding-programming-260nw-1516243910.jpg"),
          ),
        ],
        backgroundColor: Colors.black,

      ),


      body: SingleChildScrollView(
          child:Column(children: [

            TextFormField(

              controller: txt,
              onChanged: (value){gettext=value;},

            ),


            TextButton(onPressed: (){
              submit();
              txt.clear();
            },
              child: Text("Type here",),
            ),


            ListView.builder(shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:list.length,
                itemBuilder: (context,index){
                  return Text(list[index],);}

            )
          ]
          )
      ),







      bottomNavigationBar:

      BottomNavigationBar(
          backgroundColor: Colors.black,

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,

          iconSize: 35,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home , color:Colors.white),
                label: 'home'),



            BottomNavigationBarItem(icon: Icon(Icons.search, color:Colors.white),
                label: 'Search' ),

            BottomNavigationBarItem(icon: Icon(Icons.chat , color:Colors.white),
                label: 'Chat' ),


            BottomNavigationBarItem(icon: Icon(Icons.notification_add , color:Colors.white),
                label: 'Notifications' ),


          ]
      ),

    );




  }
}