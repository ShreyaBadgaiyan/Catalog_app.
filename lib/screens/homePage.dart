import 'package:demoapp/widgets/drawer.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(
          color: Colors.black,
        ),),

      ),
      body: Center(
        child: Container(

        ),
      ),
      drawer: MyDrawer(),
    );

  }
}
