import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Center(
        child: Text("HOMEPAGE"
        ,
        style: TextStyle(
          color: Colors.pink,
          height: 34,
        ),
        ),
      ),
    ) ;

  }
}
