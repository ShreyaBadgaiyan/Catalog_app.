import 'package:demoapp/utils/routes.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child:SingleChildScrollView(
        child:Column(
          children:[
            Image.asset(
              "assets/Images/login.png",
              fit:BoxFit.cover,
            ),

            SizedBox(
              height:20.0,
            ),
            Padding(
                padding:const EdgeInsets.symmetric(
            vertical:16.0,horizontal: 32.0
            ),
            child: Column(
              children:[
                TextFormField(
                  decoration:InputDecoration(
                    hintText: "Enter Username",
                    labelText:"Username",
                  ),
                ),

                SizedBox(
                  height:20.0,
                ),

                TextFormField(
                  obscureText: true,
                    decoration:InputDecoration(

                      hintText: "Enter Password",
                      labelText:"Password",
                    ),
                ),

                SizedBox(
                  height:20.0,
                ),

                ElevatedButton(
                  child:Text("Logina"),
                  style:TextButton.styleFrom(minimumSize:Size(150,40)),
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                )


              ]
            ),
            ),
          ],

        ),
      ),
    );
  }
}
