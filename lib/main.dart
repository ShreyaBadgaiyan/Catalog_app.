import 'package:demoapp/widgets/themes.dart';
import "package:flutter/material.dart";
import 'utils/routes.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';




void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode:ThemeMode.light,
    theme:MyTheme.lightTheme,
    darkTheme: MyTheme.darkTheme,

    initialRoute: "/",

    routes:{
        "/":(context)=>const HomePage(),
      MyRoutes.homeRoute:(context)=>const HomePage(),
      MyRoutes.loginRoute:(context)=>const LoginPage(),

    }

    );
  }
}