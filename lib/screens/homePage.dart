import 'package:demoapp/models/catalog.dart';
import 'package:demoapp/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/models/catalog.dart;





import '../widgets/item_widget.dart';class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App",
        style: TextStyle(
          color: Colors.black,
        ),),

      ),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
           itemBuilder: (context,index){
            return ItemWidget(key: null,);
           },
      ),
      drawer: const MyDrawer(),
    );

  }
}
