import 'package:demoapp/widgets/themes.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';




void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode:ThemeMode.light,
    theme:MyTheme.lightTheme,
    darkTheme: MyTheme.darkTheme,

    initialRoute: "/",

    routes:{
        "/":(context)=>HomePage(),
      MyRoutes.homeRoute:(context)=>HomePage(),
      MyRoutes.loginRoute:(context)=>LoginPage(),

    }

    );
  }
}