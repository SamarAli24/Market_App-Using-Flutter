import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'about.dart';
import 'location.dart';
import 'home.dart';
import 'hpage.dart';
import 'favorite.dart';



class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  _favoriteState createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Center
          (
          child:
          Text("Favourites" ,
            style:
            TextStyle(fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.deepOrange)


            ,),

        ),



      ),


      body: Column(
        children: [

          Card(
            child:

            Center(
              child: Container(
                height: 240,
                width: 390,

                child: ListTile(
                  leading:  Icon(Icons.favorite , color:Colors.red),

                  title: Image.network('https://cdn.britannica.com/74/190774-050-52CE5745/jeans-denim-pants-clothing.jpg'),
                  trailing: Text("30% Off" , style: TextStyle(color:Colors.red),),




                ),


              ),
            ),


          ),
    ]),
    );
  }
}
