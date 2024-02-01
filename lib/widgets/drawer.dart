import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL="https://media.licdn.com/dms/image/D5603AQGVXTEyq1JyLg/profile-displayphoto-shrink_800_800/0/1686986503414?e=1712188800&v=beta&t=ha_Wb_XeAzZ2-q7yo3DuF54trR0LrlNk4oRmkC76nVo";
    return Drawer(
      child: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
              ),
              accountName: Text("Shreya Badgaiyan",
                style: TextStyle(
                  color: Colors.black,
                ),),
              accountEmail: Text("shreyabadgaiyan14@gmail.com",
                style: TextStyle(
                  color: Colors.black,
                ),),
              arrowColor: Colors.purple,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ) ,
            )
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.black,),
                title:Text("Home",
                style: TextStyle(
                  color: Colors.black,
                ),)

            ),



            ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.black,),
                title:Text("Profile",
                  style: TextStyle(
                    color: Colors.black,
                  ),)

            ),

            ListTile(
                leading: Icon(CupertinoIcons.search,
                  color: Colors.black,),
                title:Text("Search",
                  style: TextStyle(
                    color: Colors.black,
                  ),)

            ),

            ListTile(
                leading: Icon(CupertinoIcons.settings_solid,
                  color: Colors.black,),
                title:Text("Settings",
                  style: TextStyle(
                    color: Colors.black,
                  ),)

            ),

            ListTile(
                leading: Icon(Icons.contacts_outlined,
                  color: Colors.black,),
                title:Text("Contact Us",
                  style: TextStyle(
                    color: Colors.black,
                  ),)

            ),

          ],
        ),
      ),
    );
  }
}
