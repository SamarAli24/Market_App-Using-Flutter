import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'about.dart';
import 'logout.dart';
import 'home.dart';
import 'hpage.dart';
import 'favorite.dart';
import 'location.dart';




class hpage extends StatefulWidget {

  @override
  _hpageState createState() => _hpageState();
}

class _hpageState extends State<hpage> {
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
      appBar: AppBar
        (
        toolbarHeight: 70,


        title: Center
          (
          child:
          Text("Home Page" ,
            style:
            TextStyle(fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.black)


            ,),
        ),

        actions: [
        Icon(Icons.favorite, color:Colors.red),
          SizedBox(width:5,),
          Icon(Icons.shopping_cart, color:Colors.red),


        ],
        backgroundColor: Colors.orange,
      ),

      drawer: Drawer(
        child: Column(

          children: [
            DrawerHeader(




              child: ListTile(
                leading:  Icon(Icons.account_circle_rounded , color:Colors.blue ,size: 50,),
                title: Text("Username" ,style: TextStyle(),),
                subtitle: Text("abc23@gmail.com"),
              )
            ),
            ListTile(
              leading:  Icon(Icons.logout , color:Colors.blue ,),
              title: Text("Logout"),

            ),
            ListTile(
              leading:  Icon(Icons.favorite , color:Colors.blue,
              ),
              title: Text("Favourite"),
            ),
            ListTile(
              leading:  Icon(Icons.warning , color:Colors.blue),
              title: Text("About"),
              trailing:  IconButton(onPressed: ()
              {


                Navigator.push(context , MaterialPageRoute(builder: (context) => about()));
              },
               icon:Icon(Icons.arrow_left_sharp, color:Colors.blue),

              ),




            ),
            ListTile(
              leading:  Icon(Icons.location_city , color:Colors.blue),
              title: Text("Location"),
              trailing:  IconButton(onPressed: ()
              {


                Navigator.push(context , MaterialPageRoute(builder: (context) => location()));
              },
                icon:Icon(Icons.arrow_left_sharp, color:Colors.blue),

              ),




            ),


          ],
        ),
      ),

    body: SingleChildScrollView(
      child: Column(
        children: [
          Card(
              child:

              Center(
                child: Container(
                  height: 90,
                  width: 300,


                  child: ListTile(

                    leading: CircleAvatar(backgroundImage: NetworkImage('https://cdn.luxe.digital/media/2021/10/05193223/best-casual-shoes-men-axel-arigato-clean-90-review-luxe-digital%402x.jpg'),),
                    title:Text("Shoes" , style: TextStyle(fontSize: 20),),
                    subtitle: Text("10 Pieces left" , style: TextStyle(fontWeight: FontWeight.bold)),
                  ),

                ),
              ),


          ),
          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,


                child: ListTile(
                  leading:  IconButton(onPressed: ()
                  {


                    Navigator.push(context , MaterialPageRoute(builder: (context) => favorite()));
                  },
                    icon: Icon(Icons.favorite , color:Colors.red),

                  ),

                title: Image.network('https://media.gq.com/photos/602ea742937235d39fc1315b/master/w_2000,h_1334,c_limit/sunspel.jpg'),
                  trailing: Text("30% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),
          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,

                child: ListTile(
                  leading:  IconButton(onPressed: ()
                    {


                    Navigator.push(context , MaterialPageRoute(builder: (context) => favorite()));
                    },
                   icon: Icon(Icons.favorite , color:Colors.red),

                  ),

                  title: Image.network('https://cdn.britannica.com/74/190774-050-52CE5745/jeans-denim-pants-clothing.jpg'),
                  trailing: Text("30% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),
          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,


                child: ListTile(
                  leading:  IconButton(onPressed: ()
                  {


                    Navigator.push(context , MaterialPageRoute(builder: (context) => favorite()));
                  },
                    icon: Icon(Icons.favorite , color:Colors.red),

                  ),

                  title: Image.network('https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1620067550-lot-marina-short-granite-021-1620067516.jpg?crop=1xw:1xh;center,top&resize=480:*'),
                  trailing: Text("10% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),
          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,


                child: ListTile(
                  leading:  IconButton(onPressed: ()
                  {


                    Navigator.push(context , MaterialPageRoute(builder: (context) => favorite()));
                  },
                    icon: Icon(Icons.favorite , color:Colors.red),

                  ),

                  title: Image.network('https://g3fashion.cdn.imgeng.in/upload/products/medium/nostrum_black_solid_cotton_mens_trouser_1605088613as1993139_1.jpg'),
                  trailing: Text("25% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),
          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,


                child: ListTile(
                  leading:  IconButton(onPressed: ()
                  {


                    Navigator.push(context , MaterialPageRoute(builder: (context) => favorite()));
                  },
                    icon: Icon(Icons.favorite , color:Colors.red),

                  ),

                  title: Image.network('https://5.imimg.com/data5/DU/CW/MY-5868356/men-s-leather-jacket-500x500.jpg'),
                  trailing: Text("15% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),

        ],
      ),
    ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context , MaterialPageRoute(builder: (context) => hpage()));

        },
       label: const Text("Back"),
        icon: const Icon(Icons.backspace_outlined),
        backgroundColor: Colors.deepOrange,

      ),




















      bottomNavigationBar:

      BottomNavigationBar(
          backgroundColor: Colors.white,

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,

          iconSize: 35,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home , color:Colors.black),
                label: 'home'),



            BottomNavigationBarItem(icon: Icon(Icons.search, color:Colors.black),
                label: 'Search' ),


            BottomNavigationBarItem(icon: Icon(Icons.person, color:Colors.black),
                label: 'Profile' ),


          ]
      ),

    );




  }
}