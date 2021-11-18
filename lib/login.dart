import 'package:flutter/material.dart';


class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("Login",style: TextStyle(fontSize: 30,color: Colors.deepOrange),)),




      ),

      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            Column(
              children:  <Widget>[
                SizedBox(height: 120,),
                Image.asset('assets/images/astralis.logo.png',height: 180,width: 180,),
                SizedBox(height:20,),

                Text('Login Here',
                  style: TextStyle(fontSize: 25, color: Colors.white),)

              ],
            ),

          ],
        ),


      ),

    );



  }
}


