import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'about.dart';
import 'logout.dart';
import 'location.dart';
import 'home.dart';
import 'hpage.dart';
import 'favorite.dart';
import 'location.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login>{

  GlobalKey<FormState> formkey= GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.orange,

          title: Center
            (
            child:
            Text("Login" ,
              style:
              TextStyle(fontSize: 30,
                  fontWeight:FontWeight.bold,
                  color: Colors.black)


              ,),

          ),



        ),

        body:SingleChildScrollView(
          child: Column(children:[
            Container(
              height: 350,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfzq5PdErNgXb_zKaXMxibpbeHyAiAsIkPK2qY_urgxQx8jduHEtRWn8Vgk2WdCi7R3SY&usqp=CAU"),



            ),

            Container(
              child: Container(
                padding: EdgeInsets.all(24),
                child: Center(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Username",
                            labelStyle: TextStyle(fontSize: 25, color: Colors.black , fontWeight: FontWeight.bold),

                          ),

                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 21,
                          ),
                          child: Form(
                            key:formkey,
                            child: TextFormField(

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Password",
                                  labelStyle: TextStyle(fontSize: 25, color: Colors.black , fontWeight: FontWeight.bold),





                              ),

                              validator: (value){
                                if(value!.isEmpty || !RegExp(r'^[1-5]+$').hasMatch(value)){
                                  return "Enter Correct Password";
                                }
                                else{
                                  return null;
                                }
                              },
                            ),
                          ),





                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20,),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                            ),


                            onPressed: (){
                              if(formkey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Successfully Loggged')),
                                );

                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => hpage())
                                );
                              }


                            },
                            child: Text("-> Login" , style: TextStyle(fontSize: 23 ,color: Colors.black), ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                            ),
                            onPressed: (){},
                            child: Text('Not have an account ? Register',
                                style: TextStyle(fontSize: 20, color: Colors.black)),

                          ),

                          ),




                      ],
                    ),

                  ),
                ),
              ),








          ]
          ),
        )
    );

  }
}